This academic group project demonstrates an end-to-end retail sales business intelligence solution. We designed a SQL Server star-schema data warehouse, 
developed an SSIS process to clean and transform CSV data, and created an interactive two-page Power BI dashboard. 
The dashboard summarizes approximately $343.51K in sales and 750 units sold, with analysis by product, category, store, province, and date. 
The project highlights practical skills in data modelling, SQL, ETL, data quality, Power BI, and business reporting.

Portfolio caption: Built an end-to-end retail sales BI solution using SQL Server, SSIS, and Power BI, 
transforming raw CSV data into a star-schema warehouse and an interactive dashboard for product, store, provincial, and time-based performance analysis.
Retail Sales Data Warehouse and Power BI Dashboard

Project Overview

This project presents an end-to-end business intelligence solution for retail sales analysis. It transforms raw product and sales data from CSV files into a structured SQL Server data warehouse, processes and cleans the data through SQL Server Integration Services (SSIS), and presents the results in an interactive Power BI dashboard.

The solution demonstrates the complete data workflow—from source data and dimensional modelling to ETL, validation, and business reporting.

Authors

Md Alamgir Hossain

Md Moksudul Haque

Project Objectives

Design a retail sales data warehouse using a star schema.

Load product, store, date, and sales data into dimension and fact tables.

Clean inconsistent dates, handle source-data quality issues, and remove duplicate records.

Calculate sales values and connect transactional records to dimension keys.

Build an interactive Power BI dashboard for analyzing sales performance by product, category, store, province, and date.

Technology Used

Microsoft SQL Server and SQL Server Management Studio (SSMS)

SQL Server Integration Services (SSIS)

Visual Studio

Microsoft Power BI Desktop

SQL

CSV and Excel source files

Data Warehouse Design

The project uses a star schema consisting of one fact table and three dimension tables:

DimProduct — product name, category, standard unit price, and business key

DimStore — store name and province

DimDate — full date, day, month, quarter, and year attributes

FactSales — transaction, dimension keys, unit price, quantity sold, and total sales

FactSales is connected to each dimension table through foreign keys. This design reduces reporting complexity and supports efficient filtering, grouping, and aggregation in Power BI.

ETL Process

The SSIS package performs the following main tasks:

Loads product records from a flat file into DimProduct.

Extracts unique store records and loads them into DimStore.

Cleans and standardizes dates supplied in different formats, separates invalid values, and loads valid dates into DimDate.

Loads sales transactions, converts data types, creates DateKey, and uses lookups to retrieve product and store surrogate keys.

Calculates TotalSales from unit price and quantity sold.

Loads the transformed records into FactSales and validates the completed tables.

Dashboard Features

The two-page Power BI dashboard includes:

Total sales, total quantity, and average price KPI cards

Category and store slicers

Sales and quantity analysis by product and category

Sales and quantity analysis by province and store

Geographic maps of provincial performance

Daily sales and quantity trends

Treemap, funnel, column, line, pie, donut, gauge, and scatter visuals

In the supplied dataset, the dashboard reports approximately $343.51K in total sales, 750 units sold, and an average price of $451.51. Alberta records the highest provincial sales, followed by Saskatchewan and Manitoba.

Repository Contents

File or folder

Description

Database and Table Creation.sql

SQL script that creates the dimension and fact tables

FlatFile_Data/

Product and retail sales CSV source files

SSIS Tutorial/

Visual Studio SSIS project, package, connections, and parameters

Retails_Sales_Dashboard.pbix

Main interactive Power BI dashboard

powerBI Dashboard.pdf

Two-page static export of the dashboard

ETL Process with SSIS.pdf

Illustrated documentation of the ETL workflow

Report on PowerBI Dashboard.pdf

Power BI connection, model, table, and dashboard documentation

Data Warehouse Design Q&A.pdf

Explanation of normalization, fact and dimension tables, and the star schema

ERD.pdf

Entity-relationship diagram of the data warehouse

Book1.xlsx

Supporting spreadsheet file

How to Run the Project

Create or select the FranchiseSales database in SQL Server.

Run Database and Table Creation.sql to create the warehouse tables.

Open the SSIS solution in Visual Studio with the required SSIS extension installed.

Update the flat-file and SQL Server connection paths for your environment.

Run the SSIS package and confirm that all four data flows complete successfully.

Open Retails_Sales_Dashboard.pbix in Power BI Desktop.

Update the SQL Server data-source settings, refresh the model, and use the dashboard slicers to explore the results.

Skills Demonstrated

Data warehouse and star-schema design

SQL table creation and relational modelling

ETL development with SSIS

Data cleansing, transformation, deduplication, and lookup operations

Data-quality validation

Power BI data modelling and visualization

Business-focused reporting and analytical storytelling

Note

Connection strings and file paths may need to be updated before the SSIS package or Power BI dashboard can be refreshed on another computer. The .vs, bin, and obj folders are generated development artifacts and normally do not need to be included when publishing the project to GitHub.
