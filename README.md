# Death-Prediction-Analysis-Congenital-Syphilis

This repository contains a data science project on predicting deaths from congenital syphilis. Exploratory analysis and supervised machine learning techniques (Catboost, Random Forest, SVM, and XGBoost) were used. The project is part of an Artificial Intelligence course in the Graduate Program in Data Science in Health at USF.

To analyze the epidemiological profile of congenital syphilis in Brazil between 2013 and 2023, using data from DATASUS and applying machine learning methods to identify predictors of deaths, contributing to the formulation of strategies to prevent and reduce preventable deaths related to the infection.

The data used in this study were obtained from the Notifiable Diseases Information System (SINAN), made available by the Department of Information Technology of the Unified Health System (DATASUS), at http://tabnet.datasus.gov.br/cgi/tabcgi.exe?sinannet/cnv/sifilisbr.def.

The data folder has a clean_data.csv file and another dbc folder with the dbc files by year of the SINAN system. The DBC files for the years 2013 to 2023 were downloaded, named SIFCBR13.dbc to SIFCBR23.dbc. 

The documentation folder has SINAN data from DATASUS in Portuguese, as it is from the Brazilian government.

The scripts directory contains two subfolders. The first includes one R script, Script_read_dbcs.R, which reads the DBC files and merges them in the R environment, producing a single consolidated file named clean_data.csv, with 251,659 observations and 64 variables. The second subfolder contains two Python notebooks: 1. Descriptive Analysis.ipynb, which performs a descriptive analysis of congenital syphilis case counts and mortality rates by year, and 2. ML Models.ipynb, which handles data cleaning, training and testing sample selection, and the application of machine learning models.






