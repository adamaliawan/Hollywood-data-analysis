# Hollywood Data Analysis with R and Power BI

This project combines the power of R and Power BI to analyze Hollywood movie data. The project focuses on data manipulation and analysis using R, followed by interactive data visualization and dashboard creation in Power BI. The insights from the analysis provide a comprehensive overview of Hollywood movie trends, including box office performance, genre popularity, and other relevant metrics.

## Project Overview

The main objectives of this project are:
- To perform data cleaning, manipulation, and analysis using R.
- To create interactive and insightful visualizations in Power BI for Hollywood movie data.
- To explore trends in Hollywood related to box office earnings, genres, and release years.

## Dataset

The dataset used in this project contains detailed information about Hollywood movies, including:
- **Movie Title**: The title of each movie.
- **Release Year**: The year the movie was released.
- **Genre**: The genre of the movie (e.g., action, drama, comedy).
- **Box Office Earnings**: The total earnings made by the movie at the box office.
- **Director**: The director of the movie.
- **IMDb Rating**: The rating of the movie on IMDb.
- **Production Budget**: The budget allocated to produce the movie.

## R Analysis

The R script is used for the following tasks:
1. **Data Cleaning**: Removing duplicates, handling missing values, and formatting columns for consistency.
   ```r
   # Example of data cleaning
   clean_data <- na.omit(raw_data)
   clean_data$Budget <- as.numeric(clean_data$Budget)
