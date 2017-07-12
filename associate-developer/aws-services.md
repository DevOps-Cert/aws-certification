# AWS Services (2017)

## Compute

### VPC - Virtual Private Cloud

* Connect one to another

### Route53

DNS

* DNS 53 port
* Route 66 (US highway)

### Cloud Front

CDN Edge locations that will cache assets

*** More Cloud Fronts than Availability Zones

Direct Connect - Direct connect datacenter to AWS without going over internet
Used for moving lots of data and security

### EC2

Virtual machines in the cloud

* Like VM Ware

### EC2 Container Service

* Like Docker
* Don’t have to administrate/install

### Elastic Beanstalk

Inspects code and auto provisions all infrastructure

### Lambda

Server-less event-based app server

* No access to OS (serverless)
* Upload code and code will respond to events
* Runs Alex skills

### Lightsail

Out of the box cloud

* New in 2016
* E.g. Wordpress cloud
* For people who don’t know how to use cloud

## Storage

### S3 - Object-based file store

* Text, images, movies
* Used by Dropbox
* Glacier - Archive S3 files
* Regulatory requirements to store files for years, retrieve latency in hours (3-4 hours)
* Extremely low cost

### EFS - Elastic File Service

File based storage and you can share it between multiple virtual servers

* Can install database/applications here
* Storage Gateway - Virtual machine install on premise

## Databases

### RDS - Relational Database Service

Supports:
* MySql
* MariaDB
* Postgres
* SqlServer
* Oracle
* Aurora (MySQL and Postgres)

### DynamoDB

No SQL database

* Highly scalable


### Redshift

Data warehouse

* Don’t run reports on production database - performance impact
* Copy prod DB to redshift and run reporting, long jobs

### Elasticache - Cache data in cloud

* Example: Web store - serve top 10 products on your site that never change
* Take a load off prod database

## Migration Services

### Snowball

Import/export disks into Amazon

* Briefcase storage appliance for loading terabytes of data

### Snowball Edge

Portable AWS datacenter

### DMS - Database Migration Services

Migrate on-premise database to cloud

* Migrate database to Redshift
* Converts one database type to another
* Stepping on Oracle toes for licensing fees
* No down-time replication
* Supports Oracle, Sql, Aurora, ASC, etc

### Server Migration Service (SMS)

Migrate VM Ware virtual machines to cloud

* 50 concurrent uploads

## Analytics

### Athena

Run sql queries on S3

* Turing CSV or flat files into searchable tables

* EMR - Elastic Map Reduce
* Big data processing
* Process large amounts of data
* Logs, financial markets
* Backed by Hadoop or Apache Spark

### Cloudsearch

Search engine for website

* Fully managed

### Elastic Search

Search engine for website

* OSS

### Kinesis

Stream and analyze real time data

* Analyze social media or financial markets
* Terabytes of data per hour

### Data Pipeline

Data mover

* E.g. S3 → DynamoDB

### Quick Sight

Business analytics tool

* Analyze data, e.g. S3
* Charts and dashboards
