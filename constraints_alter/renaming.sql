-- can just use rename keyword
RENAME TABLE companies TO suppliers;

-- can also use alter table syntax
ALTER TABLE suppliers
RENAME TO companies;


-- either approach is okay

-- renaming columns 
-- first argument is current name, second argument is what you want the name to be
-- the column keyword is REQUIRED for renaming columns
ALTER TABLE companies
RENAME COLUMN name TO biz_name; 