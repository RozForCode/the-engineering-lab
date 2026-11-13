DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS projects;
DROP TABLE IF EXISTS project_assignments;

CREATE TABLE departments (
    department_id INT,
    department_name VARCHAR(50)
);

CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    manager_id INT
);

CREATE TABLE projects (
    project_id INT,
    project_name VARCHAR(100),
    department_id INT
);

CREATE TABLE project_assignments (
    employee_id INT,
    project_id INT
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Engineering'),
(2, 'Marketing'),
(3, 'Finance'),
(4, 'HR');

INSERT INTO employees (employee_id, first_name, last_name, department_id, manager_id) VALUES
(1, 'Alice', 'Nguyen', 1, NULL),
(2, 'Bob', 'Smith', 1, 1),
(3, 'Carla', 'Lopez', 2, 1),
(4, 'David', 'Patel', 3, NULL),
(5, 'Evelyn', 'Kim', 1, 2),
(6, 'Frank', 'Brown', 4, 1),
(7, 'Grace', 'Singh', 2, 3);

INSERT INTO projects (project_id, project_name, department_id) VALUES
(101, 'API Migration', 1),
(102, 'Campaign Launch', 2),
(103, 'Quarterly Forecast', 3),
(104, 'Internal Portal', 1),
(105, 'Hiring Initiative', 4);

INSERT INTO project_assignments (employee_id, project_id) VALUES
(1, 101),
(2, 101),
(2, 104),
(3, 102),
(5, 104),
(4, 103),
(6, 105),
(7, 102);

-- Question 1: Write a query to return each employee and the department name they belong to.
select  e.first_name , d.department_name from employees e inner join department d on e.department_id = d.department_id
-- Question 2: Write a query to return all employees, including employees who do not belong to a department.
select e.first_name,d.department_name from employees  e left join department d on e.department_id = d.department_id
-- Question 3: Write a query to return all departments, including departments with no employees.
select e.first_name,d.department_name from department  d left join employees e on e.department_id = d.department_id
-- Question 4: Write a query to return the employee, project, and department for every employee assigned to a project.
select e.first_name, p.project_id from employees e inner join project p on e.employee_id = p.employee_id
-- should I do CTE here ? or what can inner joins be stacked in a query?

-- Question 5: Write a query that shows each employee and their manager by name.
select e.first_name, m.first_name from employees e inner join employees m on e.manager_id = m.employee_id
-- Question 6: Write a query to count how many employees are in each department.
select count(employee_id) from employees group by department

-- more questions
# SQL JOINs and CTEs — Exercise Bank

**Dataset:** employees, departments, projects, project_assignments  
**SQL dialect:** PostgreSQL

/*

## Level 1 — INNER JOIN Fundamentals

### Q001. Employee Department Lookup
Return each employee's ID, first name, last name, and department name.

### Q002. Employee Project Assignments
Return every employee assigned to a project, including their employee ID, first name, project ID, and project name.

### Q003. Project Department Lookup
Return every project alongside its project name and the name of the department that owns it.

### Q004. Employee, Project, and Department
Write a query that returns each employee assigned to a project, the project name, and the department that owns that project.

Use multiple INNER JOINs in a single query.

### Q005. Employee and Manager Names
Return each employee's name alongside their manager's name.

Use a self-join on the employees table.

### Q006. Employees Working on Engineering Projects
Return the names of employees assigned to projects owned by the Engineering department.

### Q007. Employees Assigned to Multiple Projects
Find employees assigned to more than one project. Return their employee ID, name, and number of assigned projects.

### Q008. Projects with Multiple Employees
Find projects that have more than one employee assigned. Return the project name and employee count.

### Q009. Employees Working Outside Their Department
Find employees assigned to projects owned by a different department than their own.

Return employee name, employee department, project name, and project-owning department.

### Q010. Department Project Assignments
Return each department name, project name, and the number of employees assigned to each project.

---

## Level 2 — Advanced JOIN Patterns

### Q011. Employee Project Assignment Details
Return a detailed result containing employee ID, employee name, employee department, project ID, project name, and project-owning department.

### Q012. Employees Sharing the Same Project
Find pairs of employees assigned to the same project.

Return both employee names and the project name. Avoid returning an employee paired with themselves or duplicate reversed pairs.

### Q013. Employees Reporting to the Same Manager
Find pairs of employees who report to the same manager.

Return both employee names and their manager's name. Avoid duplicate pairs.

### Q014. Managers and Their Direct Reports
Return each manager's name and the names of their direct reports.

Only include employees who have a manager.

### Q015. Departments and Their Assigned Project Employees
Return each department, its projects, and all employees assigned to those projects.

### Q016. Employees Assigned to Projects Outside Their Department
Return employees whose department differs from the department responsible for their assigned project.

Also include the employee's manager name.

### Q017. Employee Project Count
Return every employee who has at least one project assignment, alongside their total number of assigned projects.

### Q018. Project Team Composition
For every project, return its name, owning department, number of assigned employees, and the names of assigned employees.

### Q019. Department Collaboration
Find departments whose employees are working on projects owned by other departments.

Return the employee department, project-owning department, and number of assignments between them.

### Q020. Department Employee and Project Summary
Return each department alongside:
- Total number of employees.
- Total number of projects owned.
- Total number of employee-project assignments involving its employees.

---

## Level 3 — CTE Fundamentals

### Q021. Employee Department CTE
Create a CTE that retrieves employee names and department names.

Use the CTE in the main query to return employees belonging to Engineering.

### Q022. Project Assignment CTE
Create a CTE containing employee IDs, project IDs, and project names.

Use it to retrieve all assignments associated with the Internal Portal project.

### Q023. Department Employee Counts
Create a CTE that calculates the number of employees in each department.

Use the main query to return departments with more than one employee.

### Q024. Employee Project Counts
Create a CTE that calculates the number of projects assigned to each employee.

Return employees assigned to more than one project.

### Q025. Department Project Counts
Create a CTE that calculates the total number of projects owned by each department.

Return departments with at least one project.

### Q026. Manager Reporting Structure
Create a CTE that retrieves employee names and their respective manager names.

Use the main query to retrieve employees reporting to Alice.

### Q027. Project Team CTE
Create a CTE containing project names and the number of employees assigned to each project.

Return projects with more than one assigned employee.

### Q028. Employees Working Across Departments
Create a CTE that identifies employee assignments where the employee's department differs from the project's owning department.

Return the employees and projects identified by the CTE.

### Q029. Department Employee Summary
Create a CTE that calculates employee counts by department.

Join the CTE with the departments table to return department names and employee counts.

### Q030. Multiple CTEs in One Query
Create two CTEs:
1. One that calculates employee counts per department.
2. One that calculates project counts per department.

Join both CTEs to produce a department-level summary.

---

## Level 4 — CTEs Combined with JOINs and Aggregation

### Q031. Department with the Largest Workforce
Use a CTE to calculate employee counts per department.

Return the department with the highest employee count.

### Q032. Department with the Most Projects
Use a CTE to calculate the number of projects owned by each department.

Return the department with the highest project count.

### Q033. Employees Above Their Department's Average
Use a CTE to calculate the average number of employees per department.

Then identify employees belonging to departments with an above-average workforce.

### Q034. Employees with Above-Average Project Assignments
Use a CTE to calculate the average number of project assignments per employee.

Return employees whose assignment count exceeds that average.

### Q035. Project Assignment Ranking
Use a CTE to calculate the number of employees assigned to each project.

Rank projects by their employee counts, from highest to lowest.

### Q036. Department Project Assignment Summary
Use a CTE to calculate the number of employee assignments for each project.

Join this result with projects and departments to return total assignment counts per department.

### Q037. Manager Workload Analysis
Use a CTE to calculate the number of direct reports for each manager.

Return managers with at least two direct reports.

### Q038. Employee Department vs Project Department
Use a CTE to calculate how many projects each employee is assigned to outside their own department.

Return employees with at least one cross-department assignment.

### Q039. Department Workforce and Project Coverage
Use multiple CTEs to calculate:
- Number of employees per department.
- Number of projects owned per department.
- Number of assignments involving employees from each department.

Combine the results into one department-level report.

### Q040. Project Team Size Compared to Department Size
Use a CTE to calculate the number of employees assigned to each project.

Compare each project's team size against the total workforce of its owning department.

Return the project name, team size, department size, and team-to-department ratio.

---

## Level 5 — Practical SQL and Analytical Challenges

### Q041. Employees Without Project Assignments
Find all employees who have not been assigned to any project.

### Q042. Departments Without Employees
Find departments that currently have no employees.

### Q043. Projects Without Assigned Employees
Find projects that do not have any employees assigned.

### Q044. Project Employee Counts
Find the number of employees assigned to each project.

Include projects with zero assignments.

### Q045. Employees Assigned to Every Project in Their Department
Find employees who are assigned to every project owned by their own department.

### Q046. Employees Assigned to All Engineering Projects
Find employees who are assigned to every project owned by the Engineering department.

### Q047. Employees Sharing Projects
Find employees who share at least one project with another employee.

Return each unique employee pair and the number of projects they share.

### Q048. Manager Reporting Analysis
Find each manager and the number of employees directly reporting to them.

Include managers with zero direct reports.

### Q049. Department Project Participation
Find the number of distinct departments represented by employees assigned to each project.

### Q050. Department Project Ownership vs Participation
For each department, compare:
- Number of employees belonging to that department.
- Number of employees from that department assigned to its own projects.
- Number of employees from other departments assigned to its projects.

---

## Level 6 — Additional JOIN Exercises from Previous Practice

### Q051. Employees Without Project Assignments
Find all employees who have not been assigned to any project.

Use LEFT JOIN and NULL filtering.

### Q052. Departments Without Employees
Find departments that currently have no employees.

Start with departments and use LEFT JOIN.

### Q053. Employee Count Per Project
Find the number of employees assigned to each project.

Use project_assignments and GROUP BY.

### Q054. Employees Working on Projects Owned by Other Departments
Find employees who work on projects owned by a different department than their own.

Compare the employee's department ID with the project's department ID.

### Q055. Manager Direct Report Counts
Find each manager and the number of employees directly reporting to them.

Use a self-join, GROUP BY, and COUNT.

---

## Level 7 — Deep Understanding and Query Reasoning

### Q056. INNER JOIN vs LEFT JOIN
Using the existing tables, write two queries that return employee and department information using INNER JOIN and LEFT JOIN.

Explain why the results may differ if employees have NULL or unmatched department IDs.

### Q057. JOIN Multiplication
Write a query joining employees, project_assignments, and projects.

Explain why employees assigned to multiple projects appear multiple times.

### Q058. Aggregation After Multiple JOINs
Write a query that calculates the number of employees assigned to each department's projects.

Explain how joining multiple one-to-many relationships can unintentionally inflate aggregate counts.

### Q059. CTE vs Direct JOIN
Write two equivalent queries that return employee names, project names, and owning department names:
- One using direct JOINs.
- One using a CTE.

Compare their readability and explain when you would choose each approach.

### Q060. COUNT(*) vs COUNT(column)
Write a query that counts employees per department using a LEFT JOIN.

Explain the difference between COUNT(*) and COUNT(e.employee_id), especially for departments without employees.

### Q061. WHERE vs HAVING
Write a query that returns departments with more than one employee.

Demonstrate the difference between filtering rows with WHERE and filtering grouped results with HAVING.

### Q062. JOIN Conditions: ON vs WHERE
Write a query that returns every project, including projects without assigned employees.

Compare the results when a condition on the joined employee table is placed in the ON clause versus the WHERE clause.

### Q063. Multiple CTE Dependencies
Create two dependent CTEs:
- The first calculates employee project counts.
- The second identifies employees with more than one assignment.

Use the final query to return their employee details and department names.

### Q064. Query Readability and Maintainability
Take a query involving at least four tables and rewrite it using CTEs.

Compare both implementations and explain whether the CTE version improves readability or introduces unnecessary complexity.

### Q065. Query Execution Reasoning
Take a query involving three or more INNER JOINs and explain:
- Which tables are being joined.
- What each ON condition does.
- How the result changes after each JOIN.
- Why multiple rows can be generated for a single employee.
- How the database optimizer may choose a different physical join order.
*/
