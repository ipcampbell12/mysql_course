ALTER TABLE suppliers
MODIFY biz_name VARCHAR(100);

-- use modify to change data type

-- add default value and enforce shorter name

ALTER TABLE companies
MODIFY biz_name VARCHAR(100) DEFAULT 'unknown';

-- also option to rename column and change it's definition
-- current column name, then new column name, then new column definition

ALTER TABLE companies
CHANGE biz_name company_name VARCHAR(100) DEFAULT 'unknown';