--Unique Index/Default when making primary keys 

 CREATE UNIQUE INDEX temp_idx ON emplyees (first_name, last_name); 
 
 --B-tree indexes are useful for data that has values that differ and is the default for all the values which aren't primary keys.
 
 --Bitmap tree indexes are useful for data that has values that are similar or duplicates. 
CREATE BITMAP INDEX temp_idx ON employees(gender); 

--Indexes can be created on table creation

CREATE TABLE employee_temp
(employee_id NUMBER(6) PRIMARY KEY USING INDEX((CREATED INDEX temp_idx ON employee_temp(employee_id)), first_name VARCHAR(20), 
last_name VARCHAR(25)); 
