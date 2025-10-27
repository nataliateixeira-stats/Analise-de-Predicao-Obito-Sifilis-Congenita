# Death-Prediction-Analysis-Congenital-Syphilis

This repository presents a data science project focused on predicting deaths caused by congenital syphilis in Brazil. The study combines exploratory data analysis with supervised machine learning models — including CatBoost, Random Forest, Support Vector Machines (SVM), and XGBoost.

The project was developed as part of the Artificial Intelligence course in the Graduate Program in Data Science in Health at Universidade São Francisco (USF).

# Objective

The primary goal of this project is to analyze the epidemiological profile of congenital syphilis in Brazil between 2013 and 2023, using official data from DATASUS, and to apply machine learning techniques to identify the most relevant predictors of death.
The findings aim to support public health decision-making and contribute to the prevention and reduction of avoidable deaths related to congenital syphilis.

# Data Source

The data used in this study were obtained from the Notifiable Diseases Information System (SINAN), provided by the Department of Information Technology of the Unified Health System (DATASUS).
Data are publicly available at:
http://tabnet.datasus.gov.br/cgi/tabcgi.exe?sinannet/cnv/sifilisbr.def

# Repository Structure

data/

clean_data.csv — consolidated dataset containing 251,659 observations and 64 variables.

dbc/ — original SINAN data files in DBC format, organized by year (SIFCBR13.dbc to SIFCBR23.dbc, corresponding to 2013–2023).

documentation/

Contains SINAN documentation from DATASUS (in Portuguese), as provided by the Brazilian government.

scripts/r/

Script_read_dbcs.R — reads and merges all yearly DBC files in the R environment, producing the cleaned dataset clean_data.csv.

scripts/python/

1. Descriptive Analysis.ipynb — performs exploratory and descriptive analysis of congenital syphilis cases and mortality rates by year.

2. ML Models.ipynb — conducts data preprocessing, training/testing split, and applies supervised machine learning models for death prediction.