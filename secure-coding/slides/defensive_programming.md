Introduction to OAuth2 in JavaScript
======================================

# Defensive programming

## What is it
* An approach to improve software and source code, in terms of:
 - general quality, reducing bugs
 - Making it comprehensible, or understandable
 - Predictable behavior against unexpected inputs or user actions

## Rules
* Rule 1:Never assume anything
* Rule 2:Use standards
* Rule 3:Code simple

# Rule 1: Never Assume Anything

## Input Validation
* User's input and actions are not trustable
* All input and actions must be validated
* Handle exceptions:
 - Terminate
 - Retry
 - Warning

## Example
* Imagine a bank transaction and answer these questions:
 - What kind of variable you need? int, float, string, etc
 - Is it going to be a large or small number?
 - Can it be a negative number?
 - and other questions

## Testing Strategy
* Don't limit you testing process to "it works" 
* Test error cases
* Test for the illogical input
 - Strange ASCII character
 - Rolling head 
* Ask others to test the application if possible

## Order of Precedence
* Is the set order that statements are resolved
* Sometimes it's difficult to see errors in the order of precedence
 - `if(InVar=getc(input)!=EOF)`
* When in doubt, use proper parenthesis

## Size of Variables
* Some primitive data types on different OSs or hardware platforms have different values 
* You should consider the siza of variables when coding

# Rule 2:Use Standards
## Coding Standard
* Makes code coherent and easy to understand
* Debugging gets easier
* Wide range of topics
 - Variable naming
 - Identation
 - Position of brackets
 - Content of header files
 - Function declaration
 - And many more

## Variable Naming: Hungarian Notation
* Is a Naming standard 
* Starts with one or more lower-case letters that are mnemonics for the type or purpose of the variable:
 - iAge: integer type age
 - szName: zero-terminated name string

## Numbers
* Do not use constant values in the code
 - Difficult to understand
 - Difficult to maintain
 - example: `int Fr = (4.3/1.25)*N;`
* Use constant variable instead
 - `cons int PI = 3.1415`
 - `int Surface = PI * r * r;`

# Rule 3:Code Simple

## Contract
* See functions as a contract
* Given input, the execute a specific task
* They should not able to do anything else rather than the specified task
* Exception handling

## Refactoring
* Is a technique for restructuring the code, changing its internal structure whithout any change in external behavior
* Does not fix the bugs
* Can be used for battling feature creep:
 - Added features during coding
 - Usually cause problems
* Keeps your application simple

## Third-Party Libraries
* Code reuse a safe choice
* More stable and secure than what you make in a limited time

