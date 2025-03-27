-- There are multiple types of functions into sql server, functions basically encapsulates common logic or queries that can make the 
-- sql queries more concise and efficient

-- like 
-- 1-windows functions - rank(), row() row_number() dence_rank() these functions works with partition and order by clause
-- 2-aggregate functions - avg(), sum(), min(), max(), count()
-- 3-scaler functions - single value return functions can have user defined logic or queries
-- 4-Table valued functions - returns table value result , encapsulates sql query and executes it whenever invoked with select query

scaler function 

Create function functionName(@param1 paramTye,@param2 paramtype)
returns returnTYpe //e.g. varchar(50)
As
    begin
        select top 1 name from CountryName
        where name is like '@param1%' and name is not like '@param2%'
    end


Select functionName('somehero','nona')


Table valued funtions - 


Create function functionName(@param1 paramTye,@param2 paramtype)
    returns Table 
    As
        begin
            select * name from CountryName
            where name is like '@param1%' and name is not like '@param2%'
        end
    
    
    Select functionName('somehero','nona')


-- To modifiy functions we use ALTER commmand