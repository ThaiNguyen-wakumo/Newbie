# Index 

## 2 types: Clustered and Non-clustered Index

## Clustered

```
sort and store the data rows in table 
only one clusterd index per table
```

## Non-clustered

```
a structure separate from the data rows
the pointer from an index row in a nonclustered index to a data row
```

## List index

```
SHOW INDEX FROM table_name
```

## How to create index

```
CREATE INDEX index_name ON table_name (col1)
```
## Multi index cols

```
ALTER TABLE table_name ADD INDEX (col1, col2)
```

## Delete index

```
ALTER TABLE table_name DROP INDEX index_name
```