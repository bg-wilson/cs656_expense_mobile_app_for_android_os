# Check-in 1: Scope, Schema, and Strategy
Diesy Maldanado-Granillo and Benjamin Wilson
CS 656 M/W 12:30pm-1:30pm

## Deliverables:

Focus: Problem definition, mobile platform constraints, relational algebra, and intentional AI usage.

### Problem Definition and Mobile Scope: 

- This app is designed for Android 17 to provide an easy-to-use solution for roommates and groups to manage shared household expenditures. As of now, the scope focuses on getting the framework up and running. Primary functions will include:

- Users logging in/signing up
- Creating a group and adding group members
- Adding/subtracting to and from the total rent
- Being able to look at the individual/total rent

### Initial Database Design and Mechanics:

[Initial Database Design (GoogleSheets)](https://docs.google.com/spreadsheets/d/1wqFPDoLKNpy2zPlyaGeXCSw9VhCzpqxtIvDLsd5DZcE/edit?gid=0#gid=0)

**initial_design_schema**:

![Alt text](cs656_expense_mobile_app_for_android_os/Documentation/images/)

 **Example queries using relational algebra**: <insert deisy stuff here>

**Relationships**:
 - A user is part of a group and each group/user will share the appropriate rent ID with other group members
    - We can bolster the relation by crosschecking with names and values. For example, if GroupID == '1' and UserName == 'Scott' and GroupName == 'The Rat Pack' -> LeftJoin(Rent) -> return RentPerPerson, RentTotal;

- Another relation that forms is a a relation of a set unto itself (R = SxS).
    - For example say we want to check if a user has an email account in the database, the relation might be: if UserID == 'currentUserID' and UserEmail != NULL -> return True;

### AI Utilization Plan: 

A *small* amount of AI was/will be used for very minor things such as:
- An occasional alternative to a search engine.
- Infrequent formatting.

Very Rarely will AI be used to assist in the actual coding process. It is our goal to find real world sources and documentation from official channels. 

*IF* we do use AI do anything in any `meaningful` or `impactful` way, it will be disclosed in two ways:
1. In the deliverable document with a reference to where/how it was used.
2. Where the AI contribution was added to the project.




