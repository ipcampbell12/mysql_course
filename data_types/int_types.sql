-- how large of an integer you can store with each type - optimizing storage
-- signed means can be negative or positive
-- regular integer 
-- check the docs for max size for each type 
-- all about not using any more space than you have to to store a value
-- each int type has a corresponding amount of bytes
-- use TINYINT to stare number of children

CREATE TABLE parent (
    children TINYINT
);


-- integers are signed by default - can be negative
-- but you can't have negative children

CREATE TABLE parent (
    children TINYINT UNSIGNED
);

-- now it will throw an erorr if you try to add a negative value
-- will allow for higher possible max