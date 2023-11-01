# Uber Analytics | Modern Data Engineering Project by Simon Abraham

## Important:
Please watch the video of entire workflow for this project for better understanding here: https://drive.google.com/file/d/19FF3ZbcODc_kIKeWLlR5Iz_exJVM_1Bw/view?usp=sharing

## Introduction

The goal of this project is to perform ETL and analytics on Uber data using various tools and technologies like Google Console Storage, Python, Compute Instance, Mage Data Pipeline Tool, BigQuery, and Looker Studio.

## Architecture 
<img src="architecture.jpg">

## Project Goals

1. Data Extraction— Extract data from a particular source.
2. Data Transformation — Using python, transform the raw data into a strcutured format.
3. Load — Loading the transformed data onto a Data lake, in this case - BigQuery.
4. Reporting — Use a BI tool to use the data to create a Dashboard.

## Tools and Tech Used
- Programming Language - Python

Google Cloud Platform
1. Google Storage - To store the raw data
2. Compute Instance - To use a virtual machine to open the ETL tool
3. BigQuery - To store the processed data
4. Looker Studio - to build a visual dashboard using the processed data 

Modern Data Pipeine Tool - https://www.mage.ai/

## Dataset Used
TLC Trip Record Data
Yellow and green taxi trip records include fields capturing pick-up and drop-off dates/times, pick-up and drop-off locations, trip distances, itemized fares, rate types, payment types, and driver-reported passenger counts. 

More info about dataset can be found here:
1. Website - https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
2. Data Dictionary - https://www.nyc.gov/assets/tlc/downloads/pdf/data_dictionary_trip_records_yellow.pdf

## Data Model
<img src="data_model.jpeg">
