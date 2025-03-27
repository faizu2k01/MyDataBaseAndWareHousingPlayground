-- A way to handling the dynamic sql queries/
DECLARE @TableName NVARCHAR(50) = 'Employees'
DECLARE @Sql NVARCHAR(MAX)

SET @Sql = 'SELECT * FROM ' + @TableName
EXEC sp_executesql @Sql