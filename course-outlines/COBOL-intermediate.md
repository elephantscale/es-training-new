# Intermediate COBOL

© Elephant Scale  
Jan. 1, 2025


## Overview

* This program is designed to deepen developers' understanding of COBOL programming and to improve their skills needed to work with larger and more complex COBOL application. 
* The course explores advanced data handling techniques, including the use of REDEFINES, RENAMES, multi-dimensional tables, and dynamic file allocation. 
* Students will learn to optimize file operations, perform sorting and merging, and manipulate strings with COBOL’s  tools. With a focus on modular design, error handling, and reusable code, this course combines theoretical knowledge with practical exercises, culminating in a project that reinforces the integration of intermediate concepts into real-world applications.
 
## Audience

* Developers who already have a background in programming and to have completed the Introduction to COBOL course of have an equivalent level of COBOL knowledge.

## Duration
* 5 days
* It can be modified to be delivered in shorter time frames depending on the needs of the customer and students.

## Format
* Lectures and hands-on labs. (50%, 50%)

## Prerequisites

 * A background in programming.
 * Introduction to COBOL course or an equivalent level of COBOL knowledge.

## Lab environment

* TBD

## Detailed Outline

### Unit 0: Refresher

* This unit is an overview of the topics covered in the Introduction to COBOL course that are needed as requisites. Content will depend on the needs of the students

### Unit 1: Advanced Data Division Concepts

* Redefines and Renames Clauses
  * Using the REDEFINES clause to overlay storage
  * Applying RENAMES to group non-contiguous fields
  * Practical applications for each clause
* Group and Elementary Items
  * Hierarchical relationships between data items
  * Working with group-level data for easier data handling
* Advanced Use of the Picture Clause
  * Defining packed-decimal and signed data
  * Decimal alignment and scaling using V and S
  * Using BLANK WHEN ZERO
* Working with Indexed Files and File Control
  * Defining indexed files in the Data Division
  * Managing keys and record access
  * Using an indexed file for data lookup

### Unit 2: Advanced File Handling
* Using file status codes for error checking
* Handling end-of-file and record-not-found conditions
* Dynamic File Allocation
  * Using runtime environment variables for file paths
  * Dynamically assigning file names during execution
* Sorting and Merging Files in COBOL
  * Using the SORT and MERGE statements
  * Creating input and output procedures for sorting
  * Sorting multiple files by different keys
* Merging files into one, sort and summarize transaction files

### Unit 3: Working with Tables and Arrays
* Multi-Dimensional Tables
  * Defining tables with multiple dimensions
  * Understanding how COBOL manages table storage
* OCCURS Clause and Index Manipulation
  * Using the INDEXED BY phrase for efficient table access
  * Navigating arrays using SET and SEARCH statements
* Searching and Sorting Within Tables
  * Sequential and binary searches with SEARCH and SEARCH ALL
* Using PERFORM VARYING for Table Operations
  * Iterating over single and multi-dimensional arrays
  * Manipulating table elements in loops

### Unit 4: String Manipulation and Debugging
* Advanced usage of INSPECT for counting and replacing characters
* Concatenating strings with STRING
* Splitting strings into components with UNSTRING
* Using DISPLAY effectively for program tracing
* Debugging runtime errors in file and table operations
* Handling Date and Time in COBOL
  * Using CURRENT-DATE and formatting it
  * Calculating differences between dates

### Unit 5: Advanced Program Design
* Error Handling Best Practices
  * Building reusable error-handling routines
  * Logging errors to files for audit purposes
* Writing Reusable and Maintainable Code
  * Using COPY and REPLACE statements for reusable code
  * Modularizing programs with subprograms and CALL statements
* Basics of Enterprise Software Architecture.
  * How COBOL programs integrate with other systems
  * Designing system interfaces to COBOL applications
* COBOL and modern trends
  * Microservices and big data and others

### Unit 6: Capstone Project
* Student will apply what they have learned in developing, modifying and building a complex COBOL application.