# PostgresSQL Server

## Overview

PostgresSQL is an very popular open-source RBMS server that has found grown in popularity.
As an open source tool, Postgres is accessible to all but there is still a need for 
developers and admins to be trained on the specifics of the Postgres plaform

This course is an admin level course for learning how to run and administer PostgresSQl.  

## What You Will Learn

 * Installation
 * Configuration
 * Security
 * Administration
 * Backups
 * Replication

## Duration

3 Half days (some sections will be an overview)

## Audience

DBAs, Database Developers

## Skill level

Introductory to Intermediate

## Prerequisites

* Knowledge of SQL
* Experience with another relational Database

## Lab Environment

* Cloud based lab environment will be provided to students, no need to install anything on the laptop

## Students will need the following

* A reasonably modern laptop with unrestricted connection to the Internet.  Laptops with overly restrictive VPNs or firewalls may not work properly
* Chrome browser

## Detailed Course Outline

## First Steps

 * Getting PostgreSQL
 * Connecting to PostgreSQL server
 * Enabling access for network/remote users
 * Using graphical administration tools
 * Using psql query and scripting tool
 * Changing your password securely
 * Avoiding hard coding your password
 * Using a connection service file
 * Troubleshooting a failed connection


## Exploring the Database

 * What version is the server?
 * What is the server uptime?
 * Locate the database server files
 * Locate the database server message log
 * How many tables in a database?
 * How much disk space does a database use?
 * How much disk space does a table use?
 * Which are my biggest tables?
 * How many rows in a table?
 * Understanding object dependencies

## Configuration

 * Reading the fine manual
 * Planning a new database
 * Changing parameters in your programs
 * Finding the current configuration settings
 * Updating the parameter file
 * Setting parameters for particular groups of users
 * The basic server configuration checklist
 * Adding an external module to PostgreSQL
 * Using an installed module
 * Managing installed extensions

## Server Control

 * Starting the database server manually
 * Stopping the server safely and quickly
 * Reloading the server configuration files
 * Restarting the server quickly
 * Preventing new connections
 * Pushing users off the system
 * Deciding on a design for multi tenancy
 * Using multiple schemas
 * Giving users their own private database
 * Running multiple servers on one system
 * Setting up a connection pool
 * Accessing multiple servers using the same host and port

## Tables and Data

 * Choosing good names for database objects
 * Handling objects with quoted names
 * Enforcing the same name and definition for columns
 * Identifying and removing duplicates
 * Preventing duplicate rows
 * Finding a unique key for a set of data
 * Generating test data
 * Randomly sampling data
 * Loading data from a spreadsheet
 * Loading data from flat files

## Security

 * The PostgreSQL superuser
 * Revoking user access to a table
 * Granting user access to a table
 * Granting user access to specific columns and rows
 * Creating a new user
 * Temporarily preventing a user from connecting
 * Removing a user without dropping their data
 * Giving limited superuser powers to specific users
 * Auditing database access
 * Integrating with LDAP
 * Connecting using SSL
 * Using SSL certificates to authenticate
 * Encrypting sensitive data

## Database Administration

 * Writing a script that either succeeds entirely or fails entirely
 * Using psql variables
 * Placing query output into psql variables
 * Writing a conditional psql script
 * Investigating a psql error
 * Performing actions on many tables
 * Adding/removing columns on a table
 * Changing the data type of a column
 * Adding/removing schemas
 * Moving objects between schemas
 * Moving objects between tablespaces
 * Accessing objects in other PostgreSQL databases
 * Accessing objects in other foreign databases
 * Updatable views
 * Using materialized views

## Monitoring and Diagnosis

 * Providing PostgreSQL information to monitoring tools
 * Real-time viewing using pgAdmin or OmniDB
 * Checking whether a user is connected
 * Checking whether a computer is connected
 * Repeatedly executing a query in psql
 * Checking which queries are active or blocked
 * Knowing who is blocking a query
 * Knowing whether anybody is using a specific table
 * Knowing when a table was last used
 * Usage of disk space by temporary data
 * Understanding why queries slow down
 * Investigating and reporting a bug

## Regular Maintenance

 * Controlling automatic database maintenance
 * Avoiding auto-freezing and page corruptions
 * moving issues that cause bloat
 * Removing old prepared transactions
 * Identifying and fixing bloated tables and indexes
 * Monitoring and tuning vacuum
 * Maintaining indexes
 * Adding a constraint without checking existing rows
 * Finding unused indexes
 * Planning maintenance

## Performance and Concurrency (some sections will be an overview)

 * Finding slow SQL statements
 * Finding out what makes SQL slow
 * Reducing the number of rows returned
 * Simplifying complex SQL queries
 * Discovering why a query is not using an index
 * Forcing a query to use an index
 * Using parallel query
 * Using optimistic locking

## Backup and Recovery (some sections will be an overview)

 * Understanding and controlling crash recovery
 * Planning backups
 * Hot logical backups of one database
 * Backups of database object definitions
 * Standalone hot physical database backup
 * Hot physical backup and continuous archiving
 * Recovery of all databases
 * Recovery of a dropped/damaged database
 * Improving performance of backup/recovery
 * Incremental/differential backup and restore
 * Hot physical backups with Barman
 * Recovery with Barman

## Replication and Upgrades

 * Replication concepts
 * Setting up file-based replication – deprecated
 * Setting up streaming replication
 * Hot Standby and read scalability
 * Managing streaming replication
 * Using repmgr
 * Using replication slots
 * Monitoring replication
 * Delaying, pausing, and synchronizing replication
 * Logical replication
 * Bi-directional replication
 * Archiving transaction log data
 * Upgrading minor releases 

