select Employee.*, Branch.branch_name, Branch.mgr_id from Employee
inner join Branch on Employee.branch_id = Branch.branch_id