-- can make all kinds of changes to a table
-- most complicated statement in terms of options


ALTER TABLE companies
ADD COLUMN city VARCHAR(25);

-- default value for columns added will be null

-- but if you make it NOT NULL it will add 0 by default for already added rows
-- or you can manually set default if that makes more sense

ALTER TABLE companies 
ADD COLUMN employee_count INTEGER NOT NULL DEFAULT 1;