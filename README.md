# Rental Car Management  System


## PROBLEM STATEMENT

With the traditional database system, maintaining and organizing a huge amount of data was a critical task to achieve.
Storing and managing the rental car management system datasets in a traditional simple file system may cause chaos in the information management system. 
To overcome this issue, we will be using a relational database and its features to have a database that doesn’t hold any redundant data and can retrieve desired data efficiently and expeditiously to resolve complex business problems. 
In this project, we will analyze the rental car management database and will come up with some feasible ideas, and generate reports which will help in upholding the business profit. 

## OBJECTIVE

The purpose of the database is to maintain the inventory, orders, customers details, and transactional payment details. 
To manage and expand the rental car business and to maximize the profit by attracting more customers, and help in making critical business decisions by analyzing transactional data and usage pattern reports from the database. 
Using RDBMS, provide knowledge and create reports for the business management team to make accurate, effective, and crucial decisions towards the advancement of the business and to compete in today’s growing market.

## Team

*Aishwarya Mishra (NUID: 002127206)*

*Rumi Jha (NUID: 002172213)*

*Sanket Sanap (NUID: 002136240)*

*Vignesh Kumar Baskar (NUID: 002196442)*

## Note

As per business logic we are using sequences to create a primary key id value for each table
However,only for demo purpose we have to use few static values in package/procedure calls

## Steps

*If Executing For *First Time* then follow below steps:

Step1: Please run the DDL script(Car-Rental-Management\DDL\Bootstrap) which includes, Tables defination and Sequences

Step2: Please compile the package 'utils' (Car-Rental-Management\DML\Packages\utils) which holds all the functions

Step3: Please run all the other package script(Car-Rental-Management\DML\Packages) provided which includes, Package Specifications, Package Body holding all the functions and procedures used to Insert/Update record into the respective tables.

Step4: Run the trigger script(Car-Rental-Management\SQL\Triggers) which is used to maintain the audit table

Step5: Run the users script(Car-Rental-Management\SQL\Users) to create the users and grant them access accordingly

Step6: Please run all the view scripts(Car-Rental-Management\SQL\Views) given. 
This provide you the reports available to Analyst, Support and Audit Team for analysis and reports which focuses on the problem statement given.
Below are the queries to view the reports,
Report available to Analyst Team can be view by: select * from analyst_view;
Report available to Support Team can be view by: select * from support_view;
Report available to Service Team can be view by: select * from audit_view;

*If executing for *Second Time* then follow below steps:

Step1: Please run the DDL script(Car-Rental-Management\DDL\DropObjects) which will drop all objects
Step2: Please run the DDL script(Car-Rental-Management\DDL\Bootstrap) which includes, Tables defination and Sequences

Step3: Please compile the package 'utils' (Car-Rental-Management\DML\Packages\utils) which holds all the functions

Step4: Please run all the other package script(Car-Rental-Management\DML\Packages) provided which includes, Package Specifications, Package Body holding all the functions and procedures used to Insert/Update record into the respective tables.

Step5: Run the trigger script(Car-Rental-Management\SQL\Triggers) which is used to maintain the audit table

Step6: Run the users script(Car-Rental-Management\SQL\Users) to create the users and grant them access accordingly

Step7: Please run all the view scripts(Car-Rental-Management\SQL\Views) given

    This provide you the reports available to Analyst, Support and Audit Team for analysis and reports which focuses on the problem statement given.
    Below are the queries to view the reports,
    Report available to Analyst Team can be view by: select * from analyst_view;
    Report available to Support Team can be view by: select * from support_view;
    Report available to Service Team can be view by: select * from audit_view;
