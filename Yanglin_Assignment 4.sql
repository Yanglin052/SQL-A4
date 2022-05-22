--1. What is index; types of indices; pros and cons:
--  Index is an on-disk structure associated with a table that increase retrieval speed of rows from the table.
--  Types: clustered index and non-clustered index.
--  Clustered index will physically sort the data and each table only has one clustered index.
--  Non-clustered index will not sort the data.
--  Pros: Index will increase retrieval speed of rows, improve the performance of SELECT
--  Cons: Index will slow down other DML statement, like INSERT, UPDATE and DELETE; also needs extra space

--2. What's the difference between Primary key and Unique constraint?
--  a. Unique key can accept only one NULL value, while Primary key cannot accept any NULL value;
--  b. Each table can only one Primary key, but can have multiple Unique keys;
--  c. Primary key will sort by default, while Unique key will not.

--3. Tell me about check constraint
--  It will limit the value range that can be placed in the column.
--  For example, we can use check constraint to limit age values between 18 to 80.

--4. Difference between temp table and table variable
--  a. storage: Both of them are stored in temp db;
--  b. scope: temp table scoped local or global, while table variable scoped for current batch;
--  c. size: use temp table when > 100 rows, use table variable when < 100 rows;
--  d. uasgae: temp table do not use in sp/function, while table variable can be used in sp/function.
 
--5. Difference between WHERE and HAVING
--  a. Both are used as filters, but HAVING apply only to groups as a whole, and only filters on aggregation functions;
--  while WHERE applys to individual rows
--  b. WHERE goes before aggregations, while HAVING filters after the aggregations
--  c. WHERE can used with SELECT, UPDATE or DELETE, but HAVING will only be used in SELECT

--6. Difference between RANK() and DenseRank() ¡ª value gap
--  For RANK(), if there is the same rank, there will be a gap for the next rank;
--  while for DenseRank() ther will not skip any number and will not be a gap rank.

--7. COUNT(*) vs. COUNT(colName)
--  COUNT(*) will include null values, but COUNT(colName) will not include null values.

--8. What's the difference between left join and inner join? JOIN and Subquery, which one has a better performance, why?
--  a.LEFT JOIN: return all records from the left table, and the matching records from the right table;
--              for the non-matching records in the right table, the result will return NULL values.
--    INNER JOIN: only return the records that have matching values in both tables

--  b.JOIN can only be used in FROM, while Subquery can be used in SELECT, WHERE, FROM, ORDER BY and subquery is easier to understand and maintain.
--    JOIN usually has a better performance than subquery, because SQL server has a optimizer in JOIN.
 
--9. What is correlated subquery
--  It is a subquery (a query nested inside another query) that uses values from the outer query.
 
--10. What is a CTE, why do we need CTE?
--  CTE refers to common table expression.
--  CTE improves the code readability and manageability of complex SQL Statements, and provides recursive programming.
 
--11. What does SQL Profiler do?
--  It is an interface to create and manage traces and analyze and replay trace results.

--12. What is SQL injection, how to avoid SQL injection?
--  SQL injection is a web security vulnerability that allows an attacker to interfere with the queries that an application makes to its database.
--  We can use query parameters to avoid SQL injection.

--13. Difference between SP and user defined function? When to use SP when to use function?
--  a. usage: sp is used for DML, while function is for calculations;
--  b. how to call: sp is called by its name, while function is called in SQL query;
--  c. output: sp may or maynot have output, but function must return values;
--  d. SP can function but function can not call sp.

--14. Criteria of Union and Union all? Difference between UNION and UNION ALL?
--  Criteria: the number of columns must be the same, and columns types must be identical.
--  Difference:
--  UNION will remove all duplicate records, but UNION ALL will not;
--  UNION will sort the first column ascendingly, but UNION ALL will not;
--  UNION cannot be used in recursive cte, but UNION ALL can.
 
--15. Steps you take to improve SQL Queries
--  a. look at execution plan
--  b. choose index wisely
--  c. avoid unnecessary joins
--  d. avoid SELECT *
--  e. use JOIN instead of subquery
--  f. use derived table to avoid a lot of GROUP BY

--16. concurrency problem in transaction
--   Dirty reads, lost update, non-repeatable read and phantom read.

--17. what is deadlock, how to prevent?
--  In SQL Server, a deadlock occurs when two or more processes lock the separate resource.
--  We can keep transactions short, use READ COMMITTED SNAPSHOT ISOLATION or SNAPSHOT ISOLATION levels, or create index to avoid it.

--18. what is normalization, 1NF - BCNF, benefits using normalization
--  Normalization is a process of organizing data to minimize redundancy/duplication, which in turn ensures data consistency.
--  1NF: about atomic values - one cell, one value;
--  2NF: 1NF + No Partial Dependency;
--  3NF: 2NF + No Transitive Dependency;
--  BCNF: Stricter version of 3NF.
--  Benefits: Reduces redundant data and duplicate data; Provides data consistency; More flexible database design; Higher database security; Quicker execution.

--19. What are the system defined databases?
--  Master, model, tempdb, msdb, mssql system resource (hidden).

--20. Composite key
--  A composite key, in the context of relational databases, is a combination of two or more columns in a table that can be used to uniquely identify each row in the table.

--21. Candidate key
--  A candidate key is not a PK but eligible to be a PK. Mostly it is a unique key without null value.

--22. DDL vs. DML
--  DDL: Data definition language - create objects in the database - CREATE, ALTER, DROP
--  DML: Data manipulation laguage - query and modify the data - SELECT, INSERT, UPDATE, DELETE

--23. ACID property
--  Atomicity, consistency, isolation and durability.

--24. table scan vs. index scan
--  Table scan means iterate over all table rows, while Index scan means iterate over all index items.

--25. Difference between Union and JOIN
--  UNION combines the results of two or more queries into a single result that includes all the rows that belong to all queries in the union.
--  JOIN retrieves data from two or more tables based on logical relationships between the tables. 
