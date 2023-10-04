import tweepy
import pandas as pd
import json
from datetime import datetime
import s3fs

def run_twitter_etl():

    access_key = "hLBK3fNK5wt3u4k03Yu0Ou1XU"
    access_secret = "2CJ5QKRMFsZdmBxcY2HsaQRjwHMweTf0rGSstUH6hf1tnbHNKw"
    consumer_key = "1543377980625395717-oPRDkQ6E7ITF1zJAVfBAenjJ0R6JVM"
    consumer_secret = "qpiG53HIpTmCZ57yWeB5qWEgSXlHzCmDym1rcqDbDyf8i"

    #Twitter authentication
    auth = tweepy.OAuthHandler(access_key, access_secret)
    auth.set_access_token(consumer_key,consumer_secret)

    #creating an API object
    api = tweepy.API(auth)

    tweets = api.user_timeline(screen_name = '@elonmusk',
                               count = 300, #we want a count of max 300
                               include_rts = False, #Not counting re-tweets
                               tweet_mode = 'extended' #Necessary for full tweets
                               )
    tweet_list = []
    for tweet in tweets:
        text = tweet._json["full text"]

        refined_tweet = {"user":tweet.user.screen_name,
                         "text":text,
                         "favourite_count":tweet.favourite_count,
                         "retweet_count":tweet.retweet_count,
                         "created_at":tweet.created_at}

        tweet_list.append(refined_tweet)
    df = pd.DataFrame(tweet_list)
    df.to_csv("s3://twitter-ucket/elonmusk_twitter_data.csv")