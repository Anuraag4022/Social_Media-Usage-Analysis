# Social_Media-Usage-Analysis

This repository contains the analysis of social media usage data sourced from Kaggle. The dataset provides insights into various aspects of social media usage across different countries, including age categories, platforms, demographics, and professions.

## Dataset

- **File Name**: `Social_Media.csv`
- **Source**: Kaggle
- **Description**: This CSV file contains data on social media usage from various countries, including metrics such as age categories, platforms, demographics, and professions.

## Data Cleaning

The raw data was cleaned using Microsoft Excel with the following steps:

1. **Removed Duplicates**: Ensured that there were no duplicate rows in the dataset.
2. **Handled Missing Values**: Addressed missing data by filling in gaps where possible or removing problematic rows.

## Database Setup

The cleaned dataset was imported into SQL Server Management Studio 2019. The following steps were performed:

1. **Data Import**: Loaded the cleaned `Social_Media.csv` file into a SQL Server database.
2. **Database Structure**: Created a table named `Social_Media` with appropriate columns to match the dataset.

   ## Setup and Usage

1. **Database Setup**: Import the `Social_Media_Usage_Cleaned.csv` file into SQL Server Management Studio 2019. Ensure the table is named `Social_Media` and columns match those referenced in the queries.

2. **Running Queries**: Use the provided SQL queries in SQL Server Management Studio to perform the analysis.

3. **Interpreting Results**: Review the query results to gain insights into social media usage patterns, such as which countries have the most users, the most common professions, age distributions, and video watch time trends.

