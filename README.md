<div align="center"><h1>Oracle SQL</h1></div>

To run a sql file from `pwsh` shell in Oracle SQL
```sh
sqlplus -S username/password@hostname `@filename/sql
```

```sh
sqlplus -S /nolog username/password@hostname `@filename/sql
```


# 01


Create the following tables using the schema given below and insert given data set accordingly.

---

<div align="center"><h3>Table Name: client_master</h3></div>


**Description- Used to store client information**

|**Column No**|**Column Name**|**Data Type**|**Size**|**Attributes**|
| - | - | - | - | - |
|1|Client\_no|Varchar2|6|Primary key, first letter must start with ‘C’|
|2|Name|Varchar2|30|Not NULL|
|3|Address1|Varchar2|30||
|4|Address2|Varchar2|30||
|5|City|Varchar2|15||
|6|State|Varchar2|15||
|7|Pincode|Number|6||
|8|Balance\_due|Number|10,2||


**Data of client\_master table**

|**Col-1**|**Col-2**|**Col-3**|**Col-4**|**Col-5**|**Col-6**|**Col-7**|**Col-**|
| - | - | - | - | - | - | - | - |
|C001|Ivan Bayross|P-76|Worli|Bombay|Maharastra|400054|150 00|
|C002|VandanaSatiwal|128|Adams Street|Madras|TamilNadu|780001|0|
|C003|PramadaJaguste|157|Gopalpur|Kolkata|West Bengal|700058|500 0|
|C004|BasuNavindgi|A/12|Nariman|Bombay|Maharastra|400056|0|
|C005|Ravi Sreedharan|B/34|Rajnagar|Delhi|Delhi|100001|200 0|
|C006|Rukmini|Q-12|Bandra|Bombay|Maharastra|400050|0|

---

<div align="center"><h3>Table Name: product_master</h3></div>


**Description- Used to store product information**

|**Column No**|**Column Name**|**Data Type**|**Size**|**Attributes**|
| - | - | - | - | - |
|1|Product\_no|Varchar2|6|Primary key, First letter must start with ‘P’|
|2|Description|Varchar2|40|Not null|
|3|Profit\_percent|Number|4,2|Not null|
|4|Unit\_measure|Varchar2|10|Not null|
|5|Qty\_on\_hand|Number|8|Not null|
|6|Reorder\_level|Number|8|Not null|
|7|Sell\_price|Number|8,2|Not null, cannot be 0|
|8|Cost\_price|Number|8,2|Not null, cannot be 0|




**Data of product\_master table**

|**Col-1**|**Col-2**|**Col-3**|**Col-4**|**Col-5**|**Col-6**|**Col-7**|**Col-8**|
| - | - | - | - | - | - | - | - |
|P00001|1\.44 Floppies|5|Piece|100|20|525|500|
|P03453|Monitors|6|Piece|10|3|12000|11280|
|P06734|Mouse|5|Piece|20|5|1050|1000|
|P07865|1\.22 Floppies|5|Piece|100|20|525|500|
|P07868|Keyboard|2|Piece|10|3|3150|3050|
|P07885|CD Drive|2\.5|Piece|10|3|5250|5100|
|P07965|540 HDD|4|Piece|10|3|8400|8000|
|P07975|1\.44 Drive|5|Piece|10|3|1050|900|
|P08865|1\.22 Drive|5|Piece|2|3|1025|850|


---

<div align="center"><h3>Table Name: salesman_master</h3></div>

**Description- Used to store salesman working for company**

|**Column No**|**Column Name**|**Data Type**|**Size**|**Attributes**|
| - | - | - | - | - |
|1|Salesman\_no|Varchar2|6|Primary key,first letter must start with ‘S’|
|2|Salesman \_name|Varchar2|30|Not null|
|3|Address1|Varchar2|30|Not null|
|4|Address2|Varchar2|30||
|5|City|Varchar2|20||
|6|Pincode|Number|8||
|7|State|Varchar2|20||
|8|Sal\_amt|Number|8, 2|Not null, cannot be 0|

**Data of salesman\_master table**

|**Col-1**|**Col-2**|**Col-3**|**Col-4**|**Col-5**|**Col-6**|**Col-7**|**Col-8**|
| - | - | - | - | - | - | - | - |
|S001|Kiran|A/14|Worli|Bombay|400002|Maharastra|3000|
|S002|Manish|65|Nariman|Bombay|400001|Maharastra|3000|
|S003|Ravi|P-7|Bandra|Bombay|400032|Maharastra|3000|
|S004|Asish|A/5|Juhu|Bombay|400044|Maharastra|3000|


<div align="center"><h3>Table Name: sales_order</h3></div>



**Description- Used to store client’s orders**

|**Column No**|**Column Name**|**Data Type**|**Size**|**Attributes**|
| - | - | - | - | - |
|1|Order\_no|Varchar2|6|Primary key, first letter must start with ‘O’|
|2|Order\_date|Date|||
|3|Client\_no|Varchar2|6|Foreign key references Client\_master table|
|4|Salesman\_no|Varchar2|6|Foreign key references salesman \_master table|
|5|Delivery\_type|Char|1|Delivery part(P),full(F) Default ‘F’|
|6|Bill\_y\_n|Char|1||
|7|Delivery\_date|Date||Cannot be less than Order\_date|
|8|Order\_status|Varchar2|10|Values(‘InProcess’,’ Fullfilled’, ‘BackOrder’, ‘Cancelled’)|


**Data of sales\_order table**

|**Col-1**|**Col-2**|**Col-3**|**Col-4**|**Col-5**|**Col 6**|**Col-7**|**Col-8**|
| - | - | - | - | - | :-: | - | - |
|O19001|12-Jan-96|C001|S001|F|N|20-Jan-96|InProcess|
|O19002|25-Jan-96|C002|S002|P|N|27-Jan-96|BackOrder|
|O46865|18-Feb-96|C003|S003|F|Y|20-Feb-96|Fullfilled|
|O19003|03-Apr-96|C001|S001|F|Y|07-Apr-96|Fullfilled|
|O46866|20-May-96|C004|S002|P|N|22-May-96|Cancelled|
|O19008|24-May-96|C005|S004|F|N|26-May-96|InProcess|

---


<div align="center"><h3>Table Name: sales_order_details</h3></div>



**Description- Used to store client’s orders with details of each product ordered**

|Column No|Column Name|Data Type|Size|Attributes|
| :-: | - | - | - | - |
|1|Order \_no|Varchar2|6|Foreign key referencessales\_order table|
|2|Product\_no|Varchar2|6|Foreign key references product\_master table|
|3|Qty\_ordered|Number|8||
|4|Qty\_disp|Number|8||
|5|Product\_rate|Number|10, 2||


**Data of sales\_order\_details**


|**Col-1**|**Col-2**|**Col-3**|**Col-4**|**Col-5**|
| - | - | - | - | - |
|O19001|P00001|4|4|525|
|O19001|P07965|2|1|8400|
|O19001|P07885|2|1|5250|
|O19002|P00001|10|0|525|
|O46865|P07868|3|3|3150|
|O46865|P07885|3|1|5250|
|O46865|P00001|10|10|525|
|O46865|P03453|4|4|1050|
|O19003|P03453|2|2|1050|
|O19003|P06734|1|1|12000|
|O46866|P07965|1|0|8400|
|O46866|P07975|1|0|1050|
|O19008|P00001|10|5|525|
|O19008|P07975|5|3|1050|


# 02



1. Find the names of all clients having ‘A’ as the second letter in their names.
2. Find out the clients who do not stay in a city whose first letter is ‘b’.
3. List the names and city of all clients who have exactly 12 characters in length and starts with ‘I’.
4. Find the list of all clients who stay in ‘Bombay’ or ‘Delhi’.
5. Print the list of all clients whose balance_due is greater than value 10,000.
6. Print the information from sales_order table for orders places in the month of January.
7. Display the order information for client_no ‘C001’ and ‘C002’.
8. Find products whose selling price greater than 2000 and less than 5000.
9. Find products whose selling price is more than 1500.Calculate a new selling price as original selling price*1.15. Rename the new column in the above query is New_price.
10. List the names, city and state of clients who are not in the state of ‘Maharastra’.
11. Display the month(in alphabets) and date when the order must be delivered.
12. Display the Order_date in the format ‘DD-Month-YY’ e.g 12-February-13.
13. Find the date, 15 days after today’s date.





# 03



1. Count the total number of orders.
2. Calculate the average sale price of all the products.
3. Count the number of products having price greater than or equal to 1500.
4. Determine the maximum and minimum product prices. Rename the output as max_price and min_price respectively.
5. Create the following tables and insert the data as mentioned below:
```
a) Emp table
b) Dept table
c) Salgrade table
```
6. Solve the following SQL (DML) query use Emp and Dept table created above
```
a) List all department no, employee no, manager no. from emp table.
b) List all department name and location from dept table.
c) List the employees belong to the department 20.
d) List the name and salary of the employee whose salary is more than 2500.
e) List the details of the employee who have joined before end of July 81.
f) List the name of the employees who are not manager.
g) List the name of employees whose name end with ‘S’.
h) List the name of employees whose name has exactly 5 characters long.
i) List the name of employees whose name having ‘R’ as the third character.
j) List all employee names and their salaries, whose salary lies between 1500/- and 3500/- both inclusive.
k) List all employee names and their and their manager whose manager is 7902 or 7566 0r 7789.
l) List all employees which start with either J or T.
m) List all employee names and jobs, whose job title includes M or P.
n) List all jobs available in employee table.
o) List all employees who belong to the department 10 or 20.
p) List all employee names, salary and 15% raise in salary.
q) List minimum, maximum, average salaries of employee.
r) Find how many job titles are available in employee table.
s) What is the difference between maximum and minimum salaries of employees in the organization?
t) Find how much amount the company is spending towards salaries.
u) Display name of employees with deptno. 20.
v) List ename who are not eligible for commission.
w) Find no.of dept in employee table.
x) List ename and designation of the employee who does not report to anybody..
y) List the name of the employees who are less than 38 years old in the organization with respect to today’s date.
```



# 04


1. Display empno, ename, sal in ascending order of salary from emp table.
2. List ename, sal, job and deptno in descending order of deptno and salary.
3. List ename, sal, PF, HRA, DA and GROSS in ascending order of Gross. [Here PF is 12% of sal, HRA is 15% of sal, DA is 90% of sal and GROSS is sum of sal, PF, HRA, DA]
4. List the maximum salary of employee working as a salesman.
5. List the average salary and no of employees working in dept 20.
6. Display deptno, no. of employees in each department.
7. List deptno, total salary payable in each department.
8. List jobs and the no of employees in each job in descending order of no. of employees.
9. List total, maximum, minimum and average salary of employee’s job wise.
10. List the average salary for each job excluding manager.
11. List total, maximum, minimum and average salary of employee’s job-wise for dept no. 20 only.
12. List average monthly salary for each job within department.
13. List average salary for all departments where more than 5 people are working.
14. List jobs of all employees where maximum salary is greater than or equal to 5000.
15. Display total, maximum, minimum and average salaries of employee’s job-wise for department 20 and list only those rows having average salary greater than 1000.
16. Display total, maximum, minimum and average salaries of employee’s job-wise for department 20 and list only those rows having average salary greater than 1000 and arrange the above output in descending order of total salary. 
17. Calculates the average of the maximum salaries of all the departments from emp table.
18. Display the standard deviation (sd) of salary for each job type having sd >0 from emp table. 
19. Count no. of employees whose commission is greater than 300.
20. Display sum of commission for each department after substituting 100 in commission if it is NULL and order the result in descending order of department.
21. Display no. of manager present in employee table.
22. List of employee names and commissions, substituting "Not Applicable" if the employee receives no commission for those whose name has contained a “M” and order this result as descending order of name.
23. List names, salary and commission of employees whose name has contained a “M” when the income of some employees is made up of salary plus commission, or just salary, depending on whether the comm column of employees is null or not and order the result as ascending order of name.
24. Display the name of the employee where first character of each name is capital one.
25. Select the substring of 3 characters long starting form 2nd character of job type from emp table when job is ‘SALESMAN’. 




# 05


1. Display empno, ename, dname and loc from emp and dept table. 
2. Display empno, ename and their deptno, dpetname and loc from emp and dept table. 
3. Display the list of employees working in each department and with this display the department information even if no employee belongs to that department. 
4. List the employee name and their corresponding manager name from emp table. 
5. List the employee name and their corresponding manager name from emp table along this select that employee who have no manager. 
6. Find names, job and salaries of all employees and also his boss. 
7. Find the names of those employees who earn more than their boss. 
8. How much Miller needs to earn to be in BLAKE’s Grade? 
9. List the employee name and their corresponding manager name from emp table where employee name includes an “A” and display will be appeared as in the example given below.  

|**Employees and Their Managers** |
| - |
|Allen works for Blake |
|Blake works for King |
|................. |
|.............. |


10. Display different designations present in department 20 and 30. 
11. List the job common to department 20 and 30. 
12. List the jobs that are unique to department 20 compare to other departments present in emp table. 
13. List the employees belong to department of MILLER.  
14. Display all employee details whose salary is greater than average salary of employees whose date of joining is before 1st April 81. 
15. List all employees who joined the company before their manager.
16. Find the details of the employees of the department whose manager no is 7698. 
17. List the names of the employees who earn lowest salary in each department. 
18. List the employee details whose salary greater than the average salary for their department. 
19. List all employees who work in DALLAS and earn more than any employee working in CHICAGO. 




# 06


1. Create two table emp_new and dept_new as the same structure and data as of emp and dept table.
2. Modify dept_new table so that deptno will be the PRIMARY key.
3. Add a column named, ‘Grade’ (which holds grade of the employees) with CHAR(1) to the existing emp_new table.
4. Modyfy emp_new table to add a constraint ‘emp_noPri’ as PRIMARY key on empno attribute.
5. Add constraints REFERENCES to deptno of emp_new table referring deptno of dept_new table.
6. Modify the emp_new table so that we can’t store the salary of the employee which is less than 700.
7. Modify the sal column of emp_new table to NOT NULL and increase its size to 10.
8. Modify the ename column of emp_new table to increase its width to VARCHAR(35).
9. Drop the PRIMARY key constraint from emp_new table.
10. Drop the primary key constraint of dept_new table so that it will also dropped the foreign key constraint on emp_new_deptno.
11. Display all column name and constraint name of emp_new table.
12. Disable the primary key constraint of dept_new table.
13. Create table emp_new1 and dept_new1 from emp and dept respectively (also consider that there is a referential integrity between the tables using deptno attribute).
14. Now try to drop the dept_new1 table and give a comment on your output.
15. Add the comment ‘Employee Information of XYZ Company’ on emp table.
16. Add the comment ‘Unique depart of XYZ Company’ to deptno column of dept table.
17. How to show the comments of a particular column of a table?
18. How to show the comments on a particular a table?
19. Remove the comment on emp table.
20. Change the name of the emp table as emp_change table.
21. Drop the emp_new1 table so that the table structure will remain there in the database.
22. Drop the dept_new1 table permanently so the table structure wills no longer present in the database.
23. Drop the Gade column from emp_new table.
24. Make the comm. column of emp_new table as unused
25. How can we display the marked unsued columns of a emp_new table.
26. Drop the unused columns of emp_new table.
27. Rename the comm. column of emp_new table to commission.



# 07




1. Create a view D_10EMP containing details of employees in department 10.
2. Create a view Dept_Summary containing Dname, MINSal, MAXSal, AVGSal.
3. Create a view Emp_Data which would validate entry of any INSERT/ UPDATE command so that Sal figure would be between 10000 to 20000 and MGR would have to be a valid Empno, and Deptno must exists on Dept table.
4. Create a view which restricts data access to a valid employee’s own details on the Emp table and access time to office hours (09-17 and MON- SAT).
5. Create a view EMPLOYEES from emp table which contains empno, ename, job, depy and validate the deptno that must be in Dept table.
6. Create a READ only view EMP_READ from emp table which contains job, minsal, maxsal.
7. Table Client_master

|Column_Name |Data type |Size |Attributes |
| - | - | - | - |
|Client_no |Varchar2 |8 |Primary Key |
|Name |Varchar2 |20 |Not Null |
|Address1 |Varchar2 |20 |Not Null |
|Address2 |Varchar2 |20 ||
|City |Varchar2 |15 ||
|Pincode |Varchar2 |8 ||
|Bal_due |Number |8,3 ||

```sql
A. Create a view vw_clent_master using Client_no,Name,Address1 and Bal_due
    i. Insert at least 3 records to vw_client_master.
    ii. Update a record to vw_client_master.
    iii. Delete a record from vw_client_master.
And check that the above operation if the base table is affected or not.


B. Create a view Vw_sales_det using Order_no,Order_date, Product_no, Qty_ordered,
and order_status for all order which have already marked as ‘Backorder’
(Using the tables sales_order,sales_order_details).
    i. Insert a record to vw_sales_det.
    ii. Update the client_no for a particular order_no.
    iii. Delete a record.
    iv. Remove the views from database.
    
```


# 08


1. Write a PL/SQL block of code to update salary of employee ‘7788’ to 35000 if the salary is less than 35000.
2. Write a PL/SQL block of code to insert all details of employee ‘7698’ to a new table temp_emp, which has same structure as emp table.
3. Write a PL/SQL block of code to display ones name like “Hello <Name>’, Whatever entered at run time.
4. Write a PL/SQL block of code to print first 50 whole no.
5. Write a PL/SQL block of code to update the commission of employee number 7369 to Rs. 3000 if it NULL; else raise his commission by 25%.
6. Write a PL/SQL block of code to print even number between 1 and 10 using for loop.
7. Write a PL/SQL block of code that will allow 5% salary increment of an employee (emp number should be taken from user) if the employee working in the organization more than 22 year.


# 09


1. Using cursor display the details of all those employees from emp table whose sum of sal and comm. Is more than 25000;
2. Write a block which uses a Cursor For Loop to select the five hightest earners from emp table and write their details to the message table which has the following three attributes: EmpNumber, Name and Salary.
3. Create a table Emp_sal_inc that have three column (Emp_id,Cur_sal,Inc_date). Now write a PL/SQL block of code will allow 2% salary increment of all employee of Computer Science department. After that a record is to be inserted into the above table.
4. Write a PL/SQL block of code to update the location of specific department number that will be taken from user. Display an appropriate message using SQL%FOUND based on existence of the record in the Department table and display an appropriate message using SQL%FOUND based on the non-existence of the record in Department Table.
5. Write a PL/SQL block of code using your own exception handling that will show an error message whenever you want to insert a null value in a not null column.
6. Write a PL/SQL block of code which raised ‘NO DATA FOUND’ exception when there is no employee joined in 1997 at the time of displaying 1997 joined employees.
7. Write a PL/SQL Block of code to find the QOH amount from item_master table. If QOH is less than 1 raise an user define exception “INSUFFICIENT STOCK”.


# 10

1. Create a Procedure INCR_OF_EMP in which you will pas empno and amount of increment. If the salary of the specified employee is NULL in Employee table raised the exception ‘Salary Missing’ and display the message ‘This Employee has NULL salary’ else update the salary of the employee. Invoke the INCR_OF_EMP procedure from SQL prompt with some empno and increment amount and follow the consequences.
2. Create a function REVIEW_EMP in which we will pass empno as parameter and return the incremented values of salary based on the following condition:
    If salary <= 15000 then increment will be 20%,
    If salary >15000 and salary <= 30000 then increment will be 30%
    Else increment will be 40%.
Call the REVIEW_EMP function from a PL/SQL Block with empno = 7698 and display the result on the screen.

3. Create a trigger UPPER_STRING for the employee table, which makes the entry in ENAME column in UPPER CASE.
4. Write a trigger TOTAL_SALARY to maintain a derived column TOTSAL of Dept table that stores total salary of all employees in a department.
5. Create a INSTEAD OF TRIGGER in which, if a delete statement is fired on a VIEW, say V1 for an employee Name, then the corresponding employee’s records gets deleted from Employee table.
6. Write a SQL query by which you will see the code that defines the TOTAL_SALARY trigger.
7. Drop the TOTAL_SALARY trigger from the database.



# 11


1. Write a SQL statement to create a new local user named ‘Test1_<roll_no>’ e.g Test1_007 with the password ‘mckvie2024’ and with password expired option.
2. Find a list of users (username, default_tablespace, profile, authentication_type) with the OPEN status; you query the information from the dba_users.
3. Try to login to the newly created user using a new window and observe the outcome and comment on it.
4. Write a SQL statement to enable with the login system privilege to the user ‘Test1_<roll_no>’.
5. Write a SQL statement to grant the CREATE TABLE system privilege to the user ‘Test1_<roll_no>’.
6. Write a SQL statement to statement to show the privileges of the current user.
7. Create a new table named t2 (ID NUMBER (4)) and allow ‘Test1_<roll_no>’ to insert and update data in it.
8. Write a SQL statement to revoke the object privileges from ‘Test1_<roll_no>’.



