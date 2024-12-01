# OLUKEMI-DOCUMENTATION
This is where I documented my first project while learning Data Analysis with The Incubator Hub

## PROJECT OVERVIEW

This project has to do with the analysis of the capstone customer data the Incubator Hub. It has to do with the performance of different subscriptions in different regions.

## DATA SOURCES

   - Microsoft Excel Download Here
   - The Incubator Hub Capstone Data Set

## Data Cleaning and Preparations

Microsoft Excel was used to perform the following

For Data Cleaning; in this phase, duplicates were removed, and new columns were added, 
also there are some data types that needed to be changed, these was also part of the task performed in this section.
for Analysis; after ensuring the data was clean, a good number of analysis was carried out on the clean data.
some of the formulas used will be updated in this report.
Visualization; the pivot table is a very beautiful visualization tool in excel, 
this was used to present the summary of the result. Next in line is the Structured Query Language.
    
## SQL - (Structured Query Language)

This model was used to write queries for all necessary reports needed, but before writing the query, I imported the clean data from excel into my SQL work station.

Here are the steps involved in importing the data.

- convert the excel 'xlsl' file to 'csv'(comma delimited) file
- open the SQL work station
- create a new data base or use an existing one
- click and right click on the database
- proceed to 'task', then to 'import flat file', pick your file from the appropriate location, change table name if necessary and click next.
- the data types were change to the compatible ones for SQL
- then the data was uploaded.

## Power BI

The data used on excel was also imported to power Bi through the following steps
- Go to 'Get Data'
- click excel wook book
- pick your file
- click to preview
- then transform data

## DATA EXPLORATORY

- On the three analysis tool used for this project (excel, SQL and Power BI), thorough data exploration was done, some new columns were added in excel, for example the 'Subcription Duration' column, some other columns were added in SQL with the help of sql quesries and also in power BI, I added some conditional columns and also measures.

- The pivot table was used to summerise the report in excel, some pivot chats were also used.

- There were different visuals generated on Power BI that gave an overview of the subscription pattern as it was on excel.

- Power BI visuals also provided a detailed trend in the transaction trend as it relates to different regions.

## DATA ANALYSIS

The following analysis was done on excel using the excel formulas and functions

- To calculate the Subscription Duration
```
=F2-E2
```
- Total Revenue
```
=SUM(H2:H33788)
```
- Average Revenue
```
=AVERAGE(H2:H33788)
```
- Average Subscription Duration
```
=AVERAGE(I2:I33788)
```
- Total Revenue per Region
```
=SUMIF(C2:C33788,"Region",H2:H33788)
```
- Average Subscription per Region
```
=AVERAGEIF(C2:C33788,"EAST",H2:H33788)
```
- Total Revenue by Subscription Type
```
=SUMIF(D2:D33788,"subscriptiontype",H2:H33788)
```
- Average Revenue by Subscription Type
```
=AVERAGEIF(D2:D33788,"subscriptiontype",H2:H33788)
```

## POWER BI VISUALS
![image](https://github.com/user-attachments/assets/f60e281c-5798-4a4e-94df-394239d866af)

