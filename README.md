# SQL-challenge

# Employee Database: A Mystery in Two Parts

![sql.png](/EmployeeSQL/Images/sql.png')

## Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this assignment, the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data were designed. The major parts were:

1. Data Modeling

2. Data Engineering

3. Data Analysis

## Data Modeling

The provided CSVs were inspected and an ERD of the tables was created using http://www.quickdatabasediagrams.com.

![ERD Diagram](/EmployeeSQL/ERD/QuickDBD-Employees_ERD.png')


## Data Engineering

* A table schema was created [SQL Table Schema](/EmployeeSQL/schema.sql) for each of the six CSV files provided in the [data](/EmployeeSQL/data) directory.

* Each CSV file was imported into the corresponding SQL table.

## Data Analysis

A serie of queries were generated [SQL Queries](/Employee/query.sql) in order to perform the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Bonus

While the data was examined, there was a creeping suspicion that the dataset is fake. You surmised that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decided to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. The SQL database was imported into Pandas and the analysis can be seen in the [Jupyter Notebook](/EmployeeSQL/Bonus.ipynb)

2. A histogram to visualize the most common salary ranges for employees was created.

![Histogram Salary Ranges](/EmployeeSQL/Images/Dist_salary_employees.png')

3. A bar chart of average salary by title was created.

![Average Salary by Title](/EmployeeSQL/Images/Average_Salary_byTitle.png')

As the data was examined, the suspicion that the dataset is fake incresed since there should be a larger difference in average salaries between the different job titles.

# Epilogue

Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

The name turns out to be

### April Foolsday!

It was a test!

### Copyright

Trilogy Education Services © 2019. All Rights Reserved.
