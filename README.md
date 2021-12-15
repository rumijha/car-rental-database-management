# Rental Car Management  System


## Problem Statement

With the traditional database system, maintaining and organizing a huge amount of data was a critical task to achieve.
Storing and managing the rental car management system datasets in a traditional simple file system may cause chaos in the information management system. 
To overcome this issue, we will be using a relational database and its features to have a database that doesn’t hold any redundant data and can retrieve desired data efficiently and expeditiously to resolve complex business problems. 
In this project, we will analyze the rental car management database and will come up with some feasible ideas, and generate reports which will help in upholding the business profit. 

## Objective

The purpose of the database is to maintain the inventory, orders, customers details, and transactional payment details. 
To manage and expand the rental car business and to maximize the profit by attracting more customers, and help in making critical business decisions by analyzing transactional data and usage pattern reports from the database. 
Using RDBMS, provide knowledge and create reports for the business management team to make accurate, effective, and crucial decisions towards the advancement of the business and to compete in today’s growing market.

## Team

- Aishwarya Mishra (NUID: 002127206)

- Rumi Jha (NUID: 002172213)

- Sanket Sanap (NUID: 002136240)

- Vignesh Kumar Baskar (NUID: 002196442)

## Note

As per business logic sequence used to create a primary keys for each table

However, only for _demo_ purpose used static values in package/procedure calls

## Execution Steps

 **To _Re-Run_ Scripts Multiple Times**
 
  - If executing for One Time only then follow **First Time** steps
  - If already executed and wanted to execute multiple times then follow **Second Time** steps
  
> **If Executing For `First` Time:**

    Step1: Run the DDL script 'DDL\bootstrap' which will create All Objects

    Step2: Compile both the package 'utils' and its body 'utils_body' from 'DML\Packages\utils\' respectively

    Step3: Compile all other remaining packages from 'DML\Packages\' which includes
           Package Specifications, Body holding Functions and Procedures for DML
           
    Step4: Run the view script from 'SQL\Views\' which create all the views and reports
    
    Step5: Run the Users script from 'SQL\Users\' which creates the Users and Grant them access accordingly
    
    Step6: Run the Trigger script from 'SQL\Triggers\' used for Audit Purpose.
    
    Step7: Run the DML script 'DML\sample_DML' to to sample DML operations

> **If Executing For `Second` Time:**

    Step1: Run the DDL script at 'DDL\resetdb' which will Drop Old Objects
    
    Step2: Run the DDL script 'DDL\bootstrap' which will create All Objects

    Step3: Compile both the package 'utils' and its body 'utils_body' from 'DML\Packages\utils\' respectively

    Step4: Compile all other remaining packages from 'DML\Packages\' which includes
           Package Specifications, Body holding Functions and Procedures for DML
           
    Step5: Run the view script from 'SQL\Views\' which create all the views and reports
    
    Step6: Run the Users script from 'SQL\Users\' which creates the Users and Grant them access accordingly
    
    Step7: Run the Trigger script from 'SQL\Triggers\' used for Audit Purpose.

    Step7: Run the DML script 'DML\sample_DML' to to sample DML operations
    

This provide you the reports available to Analyst, Support and Audit Team for analysis and reports which focuses on the problem statement given.


## **Views**

> **Note - Since there is no data inserted yet, output of below commands may be empty**

  For Analyst:
    
            SELECT * FROM ANALYST_VIEW;
        
  For Service/Support:
    
            SELECT * FROM SUPPORT_VIEW;
        
  For Security: 
    
            SELECT * FROM AUDIT_VIEW;
