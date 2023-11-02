# YouTube ETL Amazon Web Services Data Engineering Project by Simon Abraham

## Important:
Please watch the video of entire workflow for this project for better understanding here: https://drive.google.com/file/d/1NlhIM3yTkQoBTevTKtiQOBF9e-JvnOFv/view?usp=sharing 

## Overview

This project aims to securely manage, streamline, and analyse structured and semi-structured YouTube videos data based on the video categories and the trending metrics.

## Project Goals
1. Data Ingestion — Build a system to source data from different locations.
2. ETL — Transform the data from the raw source format into a proper readable format.
3. Data lake — Storing the data from different sources into a centralized repoistory.
4. Scalability — Scale the size of the system as the data size increases.
5. Cloud — Using a cloud, in this case aws to process vast amounts of data.
6. Reporting — Build a dashboard.

## AWS Services used in this project
1. Amazon S3: Amazon S3 is an object storage service that provides manufacturing scalability, data availability, security, and performance.
2. AWS IAM: An identity and access management service which enables users to manage access to AWS services and resources securely.
3. QuickSight: Amazon QuickSight is a scalable, serverless, embeddable, machine learning-powered business intelligence (BI) service built for the cloud.
4. AWS Glue: A serverless data integration service that makes it easy to discover, prepare, and combine data for analytics, machine learning, and application development.
5. AWS Lambda: Lambda is a computing service that allows programmers to run code without creating or managing servers.
6. AWS Athena: Athena is an interactive query service for S3 which does not require data to be loaded from S3.

## Dataset Used
This Kaggle dataset contains statistics (CSV files and .json files) on daily popular YouTube videos over the course of many months. There are up to 200 trending videos published every day for many locations. The data for each region is in its own file. The video title, channel title, publication time, tags, views, likes and dislikes, description, and comment count are among the items included in the data. A category_id field, which differs by area, is also included in the JSON file linked to the region.

https://www.kaggle.com/datasets/datasnaek/youtube-new

## Architecture Diagram
<img src="architecture.jpeg">






