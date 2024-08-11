# AiCore-Data-Analytics-Power-BI-Report

# Description of project

Creates comprehensive quarterly report for an international retailer to enhance its business intelligence practices using Microsoft Power BI.

# Aim:

Extracts and transforms data, develops a star-based data model, and constructs a multi-page report. The report includes a high-level summary for C-suite executives, insights on top customers by sales region, a detailed analysis of top-performing products against sales targets, and a visually engaging map highlighting retail outlet performance across different territories.

# Learning points

Milestone 1: Loaded data onto Power BI and prepared it. Cleaned and organised data through splitting columns, removing blank rows, merging columns, removing irrelevant columns and renaming columns.

Milestone 2: Created Data Model
1.	Created Date table: 
Date = 
CALENDAR(
    DATE(YEAR(MIN(Orders[Order Date])), 1, 1),
    DATE(YEAR(MAX(Orders[Shipping Date])), 12, 31)
)
2.	Added all relevant date elements such as day of week, year and start of quarter using Power BI DAX formulas.
3.	Created relationships between the tables to form a star schema.
4.	Created Measures table to contain all relevant measures.
5.	Created initial measures such as Total Orders, Total Revenue, and Total Quantity with DAX formulas. These measures will be used later in the report.
6.	Created date and geography hierarchies through a combination of calculated columns and ordering different elements into a hierarchical structure.

Milestone 4: Creates report pages and adds a navigation sidebar.

Milestone 5: Builds Customer Detail page
1.	Created background rectangles for card visuals.
2.	Created cards for unique customers and revenue per customer.
3.	Created a line chart for customers trending with a trend line and forecasting.
4.	Created table for top 20 customers arranged by total revenue and listing number of orders.
5.	Created measures for top customer, their number of orders and total revenue.
6.	Created cards to display above measures.
7.	Created date slicer to enable user to filter page by year.

  
# Future Learning


# Installation instructions

Install Microsoft Power BI if using Windows. Install VM and then Microsoft Power BI if using Linux or Mac.

# Use instructions

# To do
Order count for top customer does not work. Fix.

# File structure of the project


### To Do
