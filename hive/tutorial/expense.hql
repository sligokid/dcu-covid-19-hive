DROP TABLE expense;
CREATE TABLE expense(OID int,`DATE` varchar(20),emp_ID int,AMOUNT int)row format delimited FIELDS terminated BY ',' stored AS textfile;
Load data local inpath '/home/kieran_mcgowan9/hive/tutorial/Expense.txt' into table expense;

select * from expense;
