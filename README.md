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

**If Executing For *First Time*:**

    Step1: Please run the DDL script 'DDL\Bootstrap' which will create all objects required

    Step2: Please compile the package 'utils' from 'DML\Packages\utils'

    Step3: Please run all other package script 'DML\Packages' provided which includes-
           Package Specifications, Body holding Functions and Procedures for DML
           
    Step4: Please run all the view scripts 'SQL\Views'
    
    Step5: Run the Users script 'SQL\Users' which creates the Users and Grant them access accordingly
    
    Step6: Run the Trigger script 'SQL\Triggers' used for Audit Purpose.

**If Executing For *Second Time*:**

    Step1: Please run the DDL script 'DDL\DropObjects' which will drop old objects
    
    Step2: Please run the DDL script 'DDL\Bootstrap' which will create all objects required

    Step3: Please compile the package 'utils' from 'DML\Packages\utils'

    Step4: Please run all other package script 'DML\Packages' provided which includes-
           Package Specifications, Body holding Functions and Procedures for DML
           
    Step5: Please run all the view scripts 'SQL\Views'
    
    Step6: Run the Users script 'SQL\Users' which creates the Users and Grant them access accordingly
    
    Step7: Run the Trigger script 'SQL\Triggers' used for Audit Purpose.

This provide you the reports available to Analyst, Support and Audit Team for analysis and reports which focuses on the problem statement given.

**To View The Reports**

    Report Available To Analyst:
    
            SELECT * FROM ANALYST_VIEW;
        
    Report Available To Service/Support:
    
            SELECT * FROM SUPPORT_VIEW;
        
    Report Available To Security: 
    
            SELECT * FROM AUDIT_VIEW;
