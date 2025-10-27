# Death-Prediction-Analysis-Congenital-Syphilis

This repository contains a data science project on predicting deaths from congenital syphilis. Exploratory analysis and supervised machine learning techniques (Catboost, Random Forest, SVM, and XGBoost) were used. The project is part of an Artificial Intelligence course in the Graduate Program in Data Science in Health at USF.

# Objective

To analyze the epidemiological profile of congenital syphilis in Brazil between 2013 and 2023, using data from DATASUS and applying machine learning methods to identify predictors of deaths, contributing to the formulation of strategies to prevent and reduce preventable deaths related to the infection.

# Materials and methods

The data used in this study were obtained from the Notifiable Diseases Information System (SINAN), made available by the Department of Information Technology of the Unified Health System (DATASUS), at http://tabnet.datasus.gov.br/cgi/tabcgi.exe?sinannet/cnv/sifilisbr.def.

The DBC files for the years 2013 to 2023 were downloaded, named SIFCBR13.dbc to SIFCBR23.dbc. These files were read and merged in the R environment using the Script_read_dbcs.R script, resulting in a single consolidated file called clean_data.csv, containing 251,659 observations and 64 variables.





