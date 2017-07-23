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

- More Cloud Fronts than Availability Zones

### Direct Connect

Directly connect datacenter to AWS without going over internet

- Used for moving lots of data and security

### EC2 - Elastic Compute Cloud

Virtual machines in the cloud

- Like VM Ware
- Resizable, scale up and down to meet requirements
- Boots in minutes

#### Pricing

- On Demand - hourly rate, no commitment
- Reserved - 1-3 year terms, hourly rate discount
  - Pay upfront
  - Supplement with On Demand for high traffic times
- Spot - bid whatever price you want
  - great if your applications have flexible start/end time
  - e.g. mapping genetic genome
  - Interesting - You will not be charged for partial hour of usage if the platform terminates your usage. But will be charged if you terminate the instance.
- Dedicated Host - dedicated, physical machine, still hourly rate without commitment
  - For using software that has "dedicated host" licensing
  - Regulatory, non multi-tenant

#### Instance types

- D for Density
- R for RAM
- M - main choice for general purpose apps
- C for Compute
- G - Graphics
- I for IOPS
- F for FPGA
- T cheap general purpose (think T2 Micro)
- P - Graphics (think Pics)
- X - Extreme Memory

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
- AWS Lambda is a compute service where you can upload your code and
create a Lambda function. AWS Lambda takes care of provisioning and
managing the servers that you use to run the code. You don’t have to worry about operating systems, patching, scaling, etc. You can use Lambda in the following ways.
- As an event-driven compute service where AWS Lambda runs
your code in response to events. These events could be changes
to data in an Amazon S3 bucket or an Amazon DynamoDB table.
- As a compute service to run your code in response to HTTP
requests using Amazon API Gateway or API calls made using
AWS SDKs. This is what we use at A Cloud Guru

#### History of Cloud Computing

Evolution of compute resource abstraction:
1. Data Center
1. IAAS
1. PAAS
1. Containers
1. Serverless (e.g. Lambda)

- Lambda functions respond to event triggers

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

Amazon Elastic File System (Amazon EFS) is a file storage service for
Amazon Elastic Compute Cloud (Amazon EC2) instances. Amazon EFS is
easy to use and provides a simple interface that allows you to create and
configure file systems quickly and easily. With Amazon EFS, storage capacity
is elastic, growing and shrinking automatically as you add and remove files,
so your applications have the storage they need, when they need it.

- Can install database/applications here
- Storage Gateway - Virtual machine install on premise
- File based storage and you can share it between multiple virtual servers

### EBS - Block Storage

Storage to pair with EC2 instance

- Cannot mount one EBS to multiple EC2
- Backup within an availability zone
- Changed on the fly except for Magnetic type
  - Max 1 on-the-fly change per 6 hour period
- Volume size can only be scaled up
- Must be in the same availability zone
  - No migration tool for EBS volumes
  - Need to create a snapshot then create a volume in a different region

#### Instance types

- GP2 - General purpose SSD
  - 3 IOPS per GB, 10k max, bursting
- Provisioned IOPS SSD
  - IO intensive apps
  - use for >10k IOPS, 20k max
- ST1 - Throughput Optimized HDD
  - Magnetic
  - Sequential data
  - log processing, data warehousing
  - can't be boot volumes
- SC1 - Cold HDD
  - cheapest for infrequently accessed workloads
  - e.g. file server
  - can't be booted
- Magnetic (Standard)
  - IS Bootable
  - cheapest bootable storage device

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

### Elasticache

Cache data in cloud

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

### SMS - Server Migration Service

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
- Shared access to AWS account
- Identity federation (AD, Facebook, Linkedin)
- Multi-factor authentication
- Temporary access for users/devices
- 1 to 36 hour valid tokens

#### terms

- Users
- Groups
- Roles
- Polices

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

### STS - Security Token Service

Grand temporary access

- uses SAML - Security Assertion Markup Language
- Does not need to be an existing user
- Alternate to IAM - Allows user to sign on to AWS Console without IAM credentials
- Cross AWS account access

#### terms

- federation
- Identity broker - not out of the box, need to create your own
- Identity store - AD, Facebook, Google, etc
- Identities - end users

#### Scenario - Enterprise web app on AWS is secured by corporate LDAP, uses S3.

1. Develop an Identity Broker to authenticate with LDAP
1. Identity Broken then communicates with STS (IAM GetFederationToken function)
1. Application gets temporary access to resources (S3) - getting temporary access key, secret access key, token, and duration

### Web Identity Federation

#### terms

- Trust Policy
- ProviderId
- RoleArn - Role Amazon Resource Name

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

- Like Google Analytics

## Business Productivity

### WorkDocs

Storing work docs in S3

### WorkMail

Exchange for AWS

## iOT - Internet of Things

## Desktop & App Streaming

### Workspaces

VDI for AWS

* run Windows environment in AWS

### AppStream 2.0

Stream desktop apps to users

## Artificial Intelligence

- Superintelligence by Nick Bostrom
  - Paths, Dangers, Strategies
  - Tweeted by Elon Musk

### Alexa

Voice service in the Cloud

* Talking to Lambda
* Lex - software core of Alexa. Allows you to embed Alexa in other devices.

### Polly

Text to Voice

### Machine Learning

### Rekognition

* Upload picture and it will return tags
* Facial recognition with percentage match

#### Demo app idea

Upload photos and retrieve tags for what's stored in them. Download them and add them back to the original image.

## Messaging

### SNS - Simple Notification Services

### SQS - Simple Queuing Service

Decouple applications using queues

### SES - Simple Email Service
