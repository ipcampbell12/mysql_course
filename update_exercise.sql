--change Jackson's name to Jack
UPDATE cats SET name='Jack'
WHERE name='Jackson';


--change Ringo's breed
UPDATE cats SET breed = 'British Shorthair'
WHERE name='Ringo';

--the Maine coons had birthdays
UPDATE cats SET age=12
WHERE breed='Maine Coon';