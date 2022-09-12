# CMPG_223--35383615
## Student Home Accommodation System
CMPG 223 Group project by M.Nxumalo, 35383615
 
## 1	SQL DATABASE

### Database Initiation
The Student Home Accommodation System includes a database system that is necessary for storing of all the students’ information, agents’ information, and payment transactions, accommodation offered as well as all Maintenance and repairs logs of the accommodations. The database is required to also produce reports. 
Business Rules:
•	Each Client (Student) is assigned to one accommodation space at a time.
•	Each Client is assigned to one agent at a time 
•	An Agent can be assigned to one or many students  
•	Each accommodation is occupied by many students, relative to available space.
•	Clients can Make zero or many payments
•	Clients can log zero or many maintenance & repair issues.
•	Each Client signs a lease agreement
•	Each Accommodation has specifications – descriptions. 
The SQL Database will be created on SQL Server and connected to Visual Studio for data manipulation. The database will have no authentication and it will be hosted locally.

### Tables in the database
The Database consists of 7 main tables namely:
•	Clients table
•	Agent table
•	Payment table
•	Accommodation table
•	Maintenance & Repairs table
•	Lease Agreement table
•	Specifications table
Due to the system requiring registration and logging in 2 additional tables are to be added;
•	Register table
•	Login table

### Queries in the database
Each Table in the database will contain certain queries; 
1.	Client table: SELECT, INSERT, DELETE, UPDATE.
2.	Agent table: SELECT, INSERT, DELETE, UPDATE.
3.	Payment table: INSERT, UPDATE.
4.	Accommodation table: SELECT, INSERT, UPDATE, DELETE, GROUP BY, SORTING.
5.	Maintenance table: INSERT, UPDATE, DELETE.
6.	Lease Agreement: UPDATE, DELETE.
7.	Specifications: INSERT, UPDATE.
8.	Login table: SELECT.
9.	Register: INSERT.

## 2 Physical Data Diagrams

### 2.1 Physical Data Model

[ERD.drawio.pdf](https://github.com/mthobisi30/CMPG_223--35383615/files/9544174/ERD.drawio.pdf)


### 2.2 Physical Process Model
  
![process model](https://user-images.githubusercontent.com/105317670/189562280-3442885f-0cf9-4651-8e96-7606cc6482fc.png)
 
  
## 3	DETAILED DIARY

The entire Project was designed and documented solely by M. Nxumalo (35383615), with a total of 37 split days spent (with an estimate of 2 Hours spent each day – equating to 74 Hours spent on the project).

Detailed Time spent to reach Milestones and Deadlines:

-	Milestone 1: The project development commenced on the 1st of August, with the designing of the class diagram and updating the project scope & use case model. A total of 7 days was spent on this particular phase.
-	Deadline 1: Phase One of the projected Submitted on the 7th of August.
-	Milestone 2: On the 9th of August designing the physical data models (physical data model and Physical process model commenced and it took a total of 14 days to complete and ensure that everything is correct. Concluded on the 23rd of August 2022. 
-	Milestone 3: Database design took a total of 4 days to complete, starting from the 24th of August to the 28th of August.
-	Milestone 4: the System design phase started on the 30th of August up until the 12th of September. This includes documentation and creating reports. 
-	Deadline 2: Final Documentation Submission on the 12th of September.

 ![chart](https://user-images.githubusercontent.com/105317670/189562914-b6024d9f-94cf-4f65-a013-17e4a1834564.png)



## SYSTEM REQUIREMENTS

- Supported Operating Systems: Can be accessed from Windows XP, 7, 8, 9, & 10, Intel – based Macs running OS X Tiger or higher and can also be accessed form iPads running iPadOS 13.0 or higher.
- Processor Speed: 1.8 GHz or faster processor is recommended.
- Memory Space: 512 MB of RAM, 2 GB of RAM recommended for best performance (1 GB minimum if running on a virtual machine).
- HDD/ SSD Space: a minimum of 256 MB disk storage is required for the system, to improve performance, install windows on a solid-state drive (SSD).

### STEPS TO FOLLOW
#### 4.1.1	Register an Account
- The profile consists of: 
-	Username: Consisting of Lowercase letters (Minimum of 4 Characters), 2 Numerals 
-	User ID: A unique identifier consisting of numbers only (Since this system is designed for students, a student number will be used)
-	Password: The user has to generate a unique authentication key consisting of a minimum of 8 characters. The password has to have uppercase letters, lowercase letters and numbers. 

#### 4.1.2	Login to the system
- After successfully Registering an Account, the user has to login to the system. The Login step is essential for the verification of the user’s credentials( to check if the user has a registered and validated profile for the system). 
- Logging in to the system requires a valid Username and Password.

### 4.1.3	Accommodation viewing and selection
-	After the user has been granted access to the System (Through Logging in), the following GUI will be where the user gets to view all available accommodations together with their specifications, pricing and relevant contact information should there  be more inquiries to be made.
- The User can Click on their desired accommodation should they be further interested, they will be prompted to choose the room type, payment plan and additional services provided ( such as for instance, Wifi, parking etc). After, there is a button available which will then take them to the next GUI: Payments and Lease Agreement.

#### 4.1.4	Payment & Lease Agreement signing
- The Payments & Lease Agreement interface provides a platform where the user can enter their banking credentials, amount the user wants to pay (the full cost will be indicated and otustanding cost will be calculated and provided in the reports)
- After payment has been made the user will be assigned to an agent and they can then acquire the lease agreement (a basic editable document will be provided for the purpose of the project demonstration), download it and upload it back with all required information filled in. 

### 4.1.5	Confirmation & Further details
- This interface serves as an informative report on the order confirmation. This interface provides information such as the accommodation details(addess to be more precise), room number, relevant dates ( moving in and out dates), proof of payment, agent details as well as information on how to get the keys or fingerprint acess registration process. 


## 6	REPORTS

Internal reports to be generated are as follows:
### 1.	Summary reports:   
-	Count of Acquired (Lease Agreement Signees) Clients 
-	Available Accommodations 
### 2.	Exceptional report
-	List of Clients with Outstanding accounts 
### 3.	Transactions report 
