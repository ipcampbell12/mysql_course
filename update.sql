--use UPDATE and SET keyword

--create pair: INSERT INTO, VALUES
--update pair: UPDATE, SET 

--what will be the updated values? on which rows are we performing the update?
--if you don't have WHERE clause in update statement, you will update very single row in the table


--age based lay off
UPDATE employees SET current_status='fired'
WHERE age >40;

--can also update multiple columns at once

--Misty got older

UPDATE cats SET age=14
WHERE name='Misty';


--good idea to select what you are trying to update before you perform the update
-- make sure you are correclty targeting your update