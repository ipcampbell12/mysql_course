-- very similar to datetime 
-- combine a date and a time
--  difference? timestamp takes up less storage and is smaller in memory
-- supports smaller range, minimum has to be January 1st 1970 and maximum is January 19th 2038
-- birthdate might work better with datetime, timestamp might work better with an interaction with a web app

-- it's actually a timestamp
SELECT NOW(); 
-- also timestampadd ,timestampdiff etc.
-- can also do math with timestamps