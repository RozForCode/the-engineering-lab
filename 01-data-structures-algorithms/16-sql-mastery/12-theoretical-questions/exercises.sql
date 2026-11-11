-- SQL Theoretical Questions
-- Medium to hard conceptual questions only. No solutions included.

-- Question 1:
-- Explain the logical order of SQL execution for a query with SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY, and LIMIT.
-- Why does the order of execution differ from the way the query is written?

-- Question 2:
-- In SQL, what is the difference between a row being absent and a row with a NULL value?
-- Explain how this affects joins, filters, and aggregates.

-- Question 3:
-- Why does a LEFT JOIN often preserve rows from the left table even when the right side has no match?
-- What happens to the columns from the right table in that case?

-- Question 4:
-- Explain the practical difference between INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN.
-- In which scenarios would each be the correct choice?

-- Question 5:
-- Why can DISTINCT appear to hide data-quality problems even when the query is technically correct?
-- When is it appropriate to use DISTINCT, and when is it a sign of a deeper issue?

-- Question 6:
-- What is the difference between WHERE and HAVING in terms of when rows are filtered and what kind of data they operate on?
-- Give an example where using one instead of the other would be incorrect.

-- Question 7:
-- Explain the difference between COUNT(*), COUNT(column), and COUNT(DISTINCT column).
-- Under what conditions do they produce the same result and when do they differ?

-- Question 8:
-- What are the trade-offs between using subqueries and joins?
-- In what situations is one more readable or efficient than the other?

-- Question 9:
-- Why is the result of a query with ORDER BY not guaranteed unless ORDER BY is explicitly written?
-- How does SQL treat row order in relational systems?

-- Question 10:
-- What is the semantic difference between RANK, DENSE_RANK, and ROW_NUMBER?
-- Describe a scenario where each one would be the correct choice.

-- Question 11:
-- Explain how a window function differs from a regular aggregate.
-- Why does a window function allow you to retain row-level detail while still computing aggregate values?

-- Question 12:
-- Describe how PARTITION BY changes the meaning of a window function.
-- How does it affect comparisons between rows within the same group versus across the whole dataset?

-- Question 13:
-- Why are recursive CTEs useful in SQL?
-- Give a real-world scenario where a recursive query would be necessary.

-- Question 14:
-- Explain why query performance can differ dramatically between a table scan and an index lookup.
-- What factors influence whether an index improves performance?

-- Question 15:
-- What is the difference between equality lookups and range lookups in a B-tree index?
-- Why does this matter for WHERE clauses, ORDER BY, and grouping queries?

-- Question 16:
-- Explain the purpose of EXPLAIN.
-- Why is it valuable to inspect a query plan before tuning a query for production?

-- Question 17:
-- What is the risk of using a function on a column inside a WHERE clause, such as WHERE LOWER(name) = 'alice'?
-- How can this affect index usage and query performance?

-- Question 18:
-- Why can a query using SELECT * be less efficient than selecting only required columns?
-- What are the operational and maintenance costs of broad result sets?

-- Question 19:
-- Describe how database engines may optimize a join.
-- What is the difference between a nested loop join, hash join, and merge join conceptually?

-- Question 20:
-- If two SQL queries return the same final rows, are they necessarily equivalent in performance?
-- Explain how query structure, indexes, and execution plans affect real-world behavior.

-- Question 21:
-- What is the difference between a correlated subquery and a non-correlated subquery?
-- Why can correlated subqueries be more expensive in large datasets?

-- Question 22:
-- Explain what happens when a query includes both GROUP BY and a non-aggregated column that is not part of the grouping key.
-- Why is this invalid in many SQL engines?

-- Question 23:
-- When would UNION be preferable to UNION ALL?
-- Why does UNION often require additional work beyond concatenating result sets?

-- Question 24:
-- Describe a scenario where a business rule is easier to express with CASE logic than with simple WHERE clauses.
-- Why is CASE often important in reporting and analytics?

-- Question 25:
-- Explain why data modeling choices—such as missing values, foreign keys, and normalization—affect how easy SQL queries are to write and optimize.
-- How does poor schema design make query logic more fragile?
