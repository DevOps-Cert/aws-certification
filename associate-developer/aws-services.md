# AWS Services (2017)

## Compute

### VPC - Virtual Private Cloud

- Connect one to another

### Route53

DNS

- DNS 53 port
- Route 66 (US highway)

### Cloud Front

CDN Edge locations that will cache assets

--- More Cloud Fronts than Availability Zones

Direct Connect - Direct connect datacenter to AWS without going over internet
Used for moving lots of data and security

### EC2

Virtual machines in the cloud

- Like VM Ware

### EC2 Container Service

- Like Docker
- Don’t have to administrate/install

### Elastic Beanstalk

Inspects code and auto provisions all infrastructure

### Lambda

Server-less event-based app server

- No access to OS (serverless)
- Upload code and code will respond to events
- Runs Alex skills

### Lightsail

Out of the box cloud

- New in 2016
- E.g. Wordpress cloud
- For people who don’t know how to use cloud

## Storage

### S3 - Object-based file store

- Text, images, movies
- Used by Dropbox
- Glacier - Archive S3 files
- Regulatory requirements to store files for years, retrieve latency in hours (3-4 hours)
- Extremely low cost

### EFS - Elastic File Service

File based storage and you can share it between multiple virtual servers

- Can install database/applications here
- Storage Gateway - Virtual machine install on premise

## Databases

### RDS - Relational Database Service

Supports:
- MySql
- MariaDB
- Postgres
- SqlServer
- Oracle
- Aurora (MySQL and Postgres)

### DynamoDB

No SQL database

- Highly scalable


### Redshift

Data warehouse

- Don’t run reports on production database - performance impact
- Copy prod DB to redshift and run reporting, long jobs

### Elasticache - Cache data in cloud

- Example: Web store - serve top 10 products on your site that never change
- Take a load off prod database

## Migration Services

### Snowball

Import/export disks into Amazon

- Briefcase storage appliance for loading terabytes of data

### Snowball Edge

Portable AWS datacenter

### DMS - Database Migration Services

Migrate on-premise database to cloud

- Migrate database to Redshift
- Converts one database type to another
- Stepping on Oracle toes for licensing fees
- No down-time replication
- Supports Oracle, Sql, Aurora, ASC, etc

### Server Migration Service (SMS)

Migrate VM Ware virtual machines to cloud

- 50 concurrent uploads

## Analytics

### Athena

Run sql queries on S3

- Turing CSV or flat files into searchable tables

- EMR - Elastic Map Reduce
- Big data processing
- Process large amounts of data
- Logs, financial markets
- Backed by Hadoop or Apache Spark

### Cloudsearch

Search engine for website

- Fully managed

### Elastic Search

Search engine for website

- OSS

### Kinesis

Stream and analyze real time data

- Analyze social media or financial markets
- Terabytes of data per hour

### Data Pipeline

Data mover

- E.g. S3 → DynamoDB

### Quick Sight

Business analytics tool

- Analyze data, e.g. S3
- Charts and dashboards

## Security and Identity

### IAM - Identity Access Management

- Every certification exam
- User access control
- Platform sign-in

### Inspector

Inspects VMs, runs audits

### Certificate Manager

- Free certificates for your domain

### Directory Service

Integrate Active Directory (Microsoft) with AWS

### WAF - Web Application Firewall

- Prevent SQL injection, XSS

### Artifacts

Download Compliance documentation in the AWS Console

## Management Tools

### Cloud Watch

Monitor hardware usage

### Cloud Formation

Way of turning your infrastructure into code

Declarative configuration

- Cloud Formation templates
- Single command, provision many servers

### Cloud Trail

Audit changes to AWS environment

### Opsworks

### Config

Active monitoring, alerts on your environment

- E.g. Someone creates a new security group in violation of policy, Config will trigger an alert

### Service Catalog

Enterprise catalog for curating what services/configurations are allowed by your organization on the AWS Platform

### Trusted Advisor

Automated scanning/recommendation engine for users

- Give tips for maximizing performance, minimize costs

## Application Services

### Step Functions

Monitor what's going on inside your applications

- E.g. what microservices is your app using?
- New in 2016

### SWF - Simple Workflow Services

Facilitate automated + human workflows

- E.g. placing an Amazon physical good order
  - User places order, computer routes to warehouse, human picks order form shelf

### API Gateway

A door to create/publish/maintaining/secure to access backend services (APIs) "at scale"

### AppStream

Streaming desktop apps to your users

### Elastic Transcoder

Video transcoding for creating different formats of a video to target devices

## Developer Tools

### CodeCommit

Amazon's Github

### CodeBuild

- New in 2016
- Pay by the minutes

### CodeDeploy

### CodePipeline

Keep track of which versions of code in which environments

## Mobile Services

### Mobile Hub

Web console for mobile apps

- Add, configure, and design features for mobile apps

### Cognito

Service for signup/signin with social media authentication

- OAUTH?
- See CG course on building an Instagram clone
  - store images in S3
  - store metadata in DynamoDB
  - trigger lambda function to create thumbnails

### Device Farm

Test android/ios devices on hundreds of devices

### Mobile Analytics

Collect/analyze mobile app usage

### Pinpoint

Track user behavior patterns, create campaigns, engage users

* Like Google Analytics

## Business Productivity

### WorkDocs

Storing work docs in S3

### WorkMail

Exchange for AWS

## Internet of Things - iOT
