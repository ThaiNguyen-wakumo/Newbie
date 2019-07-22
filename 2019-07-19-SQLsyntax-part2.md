# SQL syntax

## SELECT statement

### Retrieve data from a single table

```
SELECT column1, column2 FROM table_name
```

### Retrive data from all table

```
SELECT * FROM table_name
```

### Some other clauses such as

```
WHERE: filtering data based on condition
ORDER BY: sorting the result
LIMIT: limiting rows returned
JOIN: querying data from multiple related table
GROUP BY: grouping data based on one or more columns
HAVING: filtering groups
```

## ORDER BY

```
ASC: ascending
DESC: descending
```

## DISTINCT: evaluate duplicate

```
SELECT DISTINCT column1 FROM table_name
```

## LIMIT

```
LIMIT row_count OFFSET offset
```

## FETCH

```
OFFSET offset_rows { ROW | ROWS }
FETCH { FIRST | NEXT } [ fetch_rows ] { ROW | ROWS } ONLY
```

## WHERE

```
SELECT * FROM table_name WHERE condition
```

## LOGICAL OPERATOR

### AND: return true if both are true

```
expression1 AND expression2
```

### OR: return true if either is true

```
expression1 OR expression2
```

### BETWEEN: return true if the operand is within a range

```
BETWEEN expression1 AND expression2
```

### IN: return true if match at least one of values

```
WHERE expression IN (8,9)
```

### LIKE: compare a value to a similar values using wildcard operator

```
WHERE firstname LIKE 'jo%'
```

```
WHERE firstname LIKE '_h%'
```

## CASE

```
CASE expression
WHEN ex1 THEN result1
WHEN ex2 THEN result2
ELSE result3
END
```

## JOIN

### ALIAS: assign a table or a column for a temporary name

```
SELECT id AS s.id FROM ID
```

### INNER: intersection of tables

```
SELECT A.n
FROM A
INNER JOIN B ON B.n = A.n
```

### LEFT OUTER JOIN

```
SELECT A.n
FROM A
LEFT JOIN B ON B.n = A.n
```

### FULL OUTER JOIN 

```
SELECT column_list
FROM A
FULL OUTER JOIN B ON B.n = A.n
```

### CROSS JOIN

```
SELECT column_list
FROM A,B
```

## AGGREGATE FUNCTION

### AVG

```
SELECT AVG(salary)
```

### COUNT

```
SELECT COUNT(employee)
```

### SUM

```
SELECT SUM(salary)
```

### MAX

```
SELECT MAX(salary)
```

### MIN

```
SELECT MIN(salary)
```