# Project_02 : *ETL Project*
  
This project demonstrates the ETL (Extract, Transform, Load) process. Using Python via Jupyter Notebook, data was read from Excel files, cleaned and transformed into the desired format, then exported to CSV files (one per table as per the ERD, or Entity Relationship Diagram). A PostgreSQL database was created using the schema from the ERD, then the data for each table was imported from the previously created CSV files. Finally, SQL query statements were executed to confirm the correct creation of the database and importing of data.
  
## Relevant Files
+ ETL_Mini_Project_DBurke_HRichardson.ipynb *(Jupyter Notebook for cleaning Excel data and exporting to CSV)*
+ ERD.png *(PNG image of the desinged Entity Relationship Diagram for the database)*
+ crowdfunding_db_schema.sql *(PostgreSQL database schema)*
+ confirmation_query.sql *(SQL file containing statements confirming the creation of the database and importing of data for all tables)*
+ Resources/campaign.csv *(CSV file containing cleaned campaign data for database import)*
+ Resources/category.csv *(CSV file containing cleaned category data for database import)*
+ Resources/contacts.csv *(CSV file containing cleaned contacts data for database import)*
+ Resources/subcategory.csv *(CSV file containing cleaned subcategory data for database import)*

## Data Sources
+ Resources/contacts.xlsx *(Excel file containing contacts source data)*
+ Resources/crowdfunding.xlsx *(Excel file containing crowdfunding source data)*
