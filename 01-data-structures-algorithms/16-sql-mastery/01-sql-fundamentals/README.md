# SQL Fundamentals

## A. Topic overview

SQL is the language used to read, filter, aggregate, and transform structured data in relational databases. At the foundation level, this topic is about learning how tables, rows, columns, predicates, and joins behave in real database systems. It matters because SQL sits at the center of analytics, backend data access, product reporting, and operational decision-making.

This topic is the entry point into the broader SQL curriculum. If you understand the fundamentals well, everything else in SQL—from window functions to optimization—becomes easier to reason about.

## B. Learning objectives

By the end of this module, you should be able to:

- Read and write basic SELECT statements with clarity.
- Filter rows using WHERE, ORDER BY, DISTINCT, and LIMIT.
- Understand how NULLs affect comparisons and aggregation.
- Use conditional expressions such as CASE and simple boolean logic.
- Explain the difference between logical query intent and physical execution.
- Work comfortably with small relational datasets in PostgreSQL or a similar dialect.

## C. Prerequisites

Before starting this topic, you should understand:

- Tables, columns, rows, and primary keys.
- Basic programming concepts such as variables, conditions, loops, and data types.
- The idea of data stored in a structured, tabular format.
- The difference between a database and an application program.

## D. Detailed learning roadmap

### Stage 1: Learn the grammar of queries

Concepts to study:

- SELECT and FROM
- WHERE and comparison operators
- ORDER BY and LIMIT
- DISTINCT and duplicate elimination
- Basic column aliases

Technical details to understand:

- Which clauses are evaluated in what order conceptually.
- Why SELECT does not change data; it only returns a result set.
- How row order is not guaranteed unless ORDER BY is used.
- Why DISTINCT removes duplicates after projection.

Important terminology:

- query
- result set
- predicate
- row
- column
- alias

Questions to be able to answer:

- What is the difference between WHERE and HAVING?
- Why does ORDER BY matter if the data appears in a certain order already?
- When should I use DISTINCT versus GROUP BY?

Practical exercises:

- Select all columns from a sample table.
- Filter rows by a range or exact value.
- Sort records by multiple columns.
- Remove duplicates from a result set.

Implementation challenges:

- Writing queries that are correct but also readable.
- Understanding how multiple filters interact with AND/OR.
- Keeping column selection and sorting aligned with the business question.

Common misconceptions:

- SELECT returns rows in insertion order by default.
- DISTINCT is a substitute for proper data modeling.
- NULL can be treated the same as a zero or empty string.

### Stage 2: Handle real-world conditions and edge cases

Concepts to study:

- NULL semantics
- Comparison operators and boolean logic
- CASE expressions
- Conditional filtering with IN, BETWEEN, and LIKE

Technical details to understand:

- NULL is unknown, not a value, which affects comparisons.
- Logical expressions with NULL often evaluate to UNKNOWN and are filtered out unless explicitly handled.
- CASE can express branching logic inside SELECT and ORDER BY.

Important terminology:

- NULL
- boolean logic
- predicate evaluation
- conditional expression

Questions to answer:

- What happens when a comparison is made to NULL?
- How are IN and BETWEEN different from equality checks?
- Why do CASE statements matter in reports and business logic?

Practical exercises:

- Return a category label based on numeric conditions.
- Filter out rows where a field is NULL.
- Count rows that match multiple conditions.
- Compare data using CASE to create human-readable outputs.

### Stage 3: Build a habit of reasoning about SQL correctness

Concepts to study:

- Query planning and reading query semantics
- The relationship between data and user intent
- Subtle differences between SQL dialects

Technical details to understand:

- A query is a specification, not an imperative program.
- The database decides the most efficient execution strategy.
- Understanding correctness is more important than accidentally relying on row order.

Practical exercises:

- Rewrite a query in multiple equivalent ways and compare the intent.
- Identify where row ordering is required and add explicit ORDER BY.
- Explain how a SQL statement answers a business question.

## E. Under-the-hood knowledge

To become strong at SQL, do not stop at syntax. You should understand:

- how relational tables are organized as sets of rows
- how comparison and filtering work in the database engine
- how NULL values are represented and compared internally
- why an ORDER BY clause changes result ordering and is not free
- how the query planner chooses access paths for small and large datasets

This deeper understanding matters because many SQL bugs come from assuming a row order or from misunderstanding how NULL behaves. Strong SQL problem solving depends more on exact reasoning than on memorizing examples.

## F. Practical exercises

### Beginner exercises

- Write a query that selects only specific columns from a table.
- Use WHERE to filter on one field and ORDER BY on another.
- Write a query that removes duplicate rows with DISTINCT.
- Write queries using LIKE, IN, and BETWEEN.

### Intermediate exercises

- Build a conditional query with CASE for status labels.
- Count rows with and without NULL values.
- Use multiple conditions to create a realistic filtering scenario.
- Explain why a query returns a different result when you add ORDER BY.

### Advanced exercises

- Compare two equivalent queries and explain why one is more readable or robust.
- Build a dataset that exposes NULL edge cases and document the result.
- Create a report that translates raw values into business-friendly categories.
- Practice walking through the logic of a query out loud without running it.

### Terminal or debugging exercises

- Run a simple PostgreSQL query and inspect output formatting.
- Use EXPLAIN to observe how the database interprets a basic query.
- Test ambiguous conditions such as NULL comparisons and OR logic.

## G. Interview preparation

Common interview problems and patterns related to this topic:

- Find records that satisfy a specific condition.
- Sort the dataset according to business priority.
- Remove duplicates while preserving meaningful records.
- Distinguish between rows with missing values and rows with zero values.
- Write queries to categorize data and build simple reports.

Common problem-solving patterns:

- Start by stating the business question in plain English.
- Translate the business question into a precise filter or projection.
- Check for edge cases before writing final SQL.
- Validate the output manually with a small dataset.

## H. Mastery checklist

- [x] I can write a correct SELECT statement from a table.
- [x] I can filter data with WHERE and ordering with ORDER BY.
- [x] I can explain how DISTINCT changes a result set.
- [x] I can reason about NULL behavior accurately.
- [x] I can use simple CASE logic in practical queries.
- [x] I can describe the difference between row semantics and result ordering.

## I. Mastery assessment

### Level 1: Foundational understanding

I can read basic SQL queries and explain what they do. I can write simple SELECT statements with filters and sorting.

### Level 2: Proficient implementation and application

I can build small but realistic queries that handle edge cases, conditional logic, and missing values. I can explain trade-offs between filtering and grouping choices.

### Level 3: Deep technical mastery

I can reason about SQL semantics precisely, including NULL behavior, output ordering, and query intent. I can explain how a database likely interprets a query and identify when a result is being shaped by assumptions rather than by explicit logic.

## J. Learning resources

Prefer authoritative sources:

- PostgreSQL documentation on SELECT, WHERE, ORDER BY, and NULL handling.
- Database textbooks that explain relational theory and SQL semantics.
- Official documentation for the SQL dialect you are using in practice.
- Reputable engineering blogs focused on database behavior and query correctness.

Suggested official references:

- PostgreSQL SELECT documentation
- PostgreSQL NULL documentation
- PostgreSQL CASE documentation

## Related study areas

- [SQL Mastery](../README.md)
- [Filtering and Sorting](../02-filtering-and-sorting/README.md)
- [Joins](../03-joins/README.md)
- [Aggregation and Grouping](../04-aggregation-and-grouping/README.md)
