
from pytube import YouTube
from sys import argv

# Check if the correct number of command-line arguments are provided
if len(argv) != 2:
    print("Usage: python script.py https://www.youtube.com/watch?v=v-icNVDbVLk")
    exit(1)

link = argv[1]

try:
    yt = YouTube(link)
except Exception as e:
    print("Error: Unable to access the YouTube video.")
    print(e)
    exit(1)

try:
    print("Title:", yt.title)
    print("Views:", yt.views)
    yd = yt.streams.get_highest_resolution()
    yd.download('/Users/simonabraham/PycharmProjects/Projects/Python_Project/Youtube_Downloader')
    print("Download completed successfully.")
except Exception as e:
    print("Error: Unable to download the video.")
    print(e)
