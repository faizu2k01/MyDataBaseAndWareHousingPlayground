-- Indexing in sql is used to otimize the data retirval performace, basically incorporation of indexing into the data table allow the
-- sql to have indexs for each row of the data table, it helps to reduces the sql to search whole table instead, the data can be 
-- easly retrieved by its index values 
-- indexing makes the read operation easier but harder the write operation

There are several kind of indexing into sql server
-- 1- Clusterd indexing - Allows the data table to have only one indexed column,and data stored into the order of that column values
CREATE CLUSTERED INDEX IX_EmployeeID ON Employees(EmployeeID)
-- 2-Non clusterd indexing - Creates a seperate index column for the data table and can have multiple indeing columns
CREATE NONCLUSTERED  INDEX IX_EmployeeID ON Employees(EmployeeID)
-- 3-Unique indexing - Validated the uniqueness of the indexed column.
CREATE Unique  INDEX IX_EmployeeID ON Employees(EmployeeID)


