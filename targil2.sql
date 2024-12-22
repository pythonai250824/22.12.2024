-- targil
-- 1. use join- find all employees without branch
select * from Employee
left join Branch on Employee.branch_id = Branch.branch_id
where Employee.branch_id is NULL;

-- 1.5. use join- find all employees with and without branch
select * from Employee
left join Branch on Employee.branch_id = Branch.branch_id;

-- 2. use join- find all branches without employees
select * from Branch
left join Employee on Branch.branch_id = Employee.branch_id
where Employee.emp_id is NULL;

-- 3. use join- find all employees and all branches
select * from Employee
FULL join Branch on Employee.branch_id = Branch.branch_id;

-- 4. use join- show only  employees who have branches
select * from Employee
inner join Branch on Employee.branch_id = Branch.branch_id;

-- 5. use join - show all employees that dont have branch 
--    and branches that dont have employees
select * from Employee
FULL join Branch on Employee.branch_id = Branch.branch_id
where Employee.branch_id is null;

-- group by - count how many employees in each branch. 
-- show only barnches who have employees
select Branch.*, count(Employee.emp_id) as count from Branch
left join Employee on Branch.branch_id = Employee.branch_id
group by Branch.branch_id
having count(Employee.emp_id) > 0;

-- group by - show avg salary for each branch. 
-- show only barnches who have employees
select Branch.*, avg(Employee.salary) as avg_salary from Branch
inner join Employee on Branch.branch_id = Employee.branch_id
group by Branch.branch_id;


