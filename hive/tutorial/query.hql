SELECT c.ID, c.NAME, c.AGE, o.AMOUNT FROM emp c JOIN expense o ON (c.ID = o.emp_ID);
