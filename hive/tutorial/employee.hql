DROP TABLE emp;
CREATE TABLE emp(ID int,NAME varchar(10),AGE int,ADDRESS varchar(10),SALARY int)row format delimited FIELDS terminated BY ',' stored AS textfile;
Load data local inpath '/home/kieran_mcgowan9/hive/tutorial/Employee.txt' into table emp;

select * from emp;
