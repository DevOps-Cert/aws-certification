# Databases

## Databases 101

### Use cases

#### OLTP - On-line Transaction processing

- Real time, narrow scope
- e.g. looking up an order

#### OLAP - On-line Analytics processing

- Large batches
- e.g. sum of orders of a certain type
- Use a copy of your database (called DB warehouse)

## DynamoDB

### Keys

#### Primary Key

- Partition (formerly "hash") key
- hash(pkey) --> physical partition location of data on disk
- e.g. user Id, guid, etc.

#### Composite Keys

- Partition Key + Sort Key
- Sort key is a range
- e.g. discussion forum app where each comment is from a user and creates a unique entry in the table
- two entries CAN have the same partition key, but MUST have DIFFERENT sort keys
- all items with the same partition will be stored together, sorted by the Sort key
  - performance design considerations

### Indexes

#### Global Secondary Index

- DIFFERENT partition key (used for base table) and DIFFERENT sort key
- Can be created at table creation or added later
- Max 5 per table
- "global" because queries on the index can span all of the data in the base table, across all partitions.
- Queries support eventual consistency only (makes sense as, guaranteed consistency would blocks write operations until whole table is scanned)
- Query results will only return attributes projected into the index

#### Local Secondary Index

- SAME partition key (used for base table), DIFFERENT sort Keys
- can ONLY be created when creating a table
- CANNOT be modified or deleted later
- Max 5 per table
- "local" in the sense that every partition of a local secondary index is scoped to a base table partition that has the same partition key value.
- allows queries over a single partition, as specified by the partition key in the query
- Query results may include attributes not projected into the index

### Streams

- Every DynamoDB operation insert/update/delete is stored in a 24 hour stream reservoir.
- Can create triggers for Lambda functions
- Is stream subscriptions supported?

![DynamoDB Streams Example](images/dynamodb-streams-example.png)
