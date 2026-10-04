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
> **Please** go here to see changes that were made schema post-submission:
[Schema/Relational Algebra](https://drive.google.com/drive/folders/1ua5mRH5ZV4d2wVKtv9t8zMDqKr8LQ964?usp=sharing)

**Relationships**:
 - A user is part of a group and each group/user will share the appropriate rent ID with other group members
    - We can bolster the relation by crosschecking with names and values. For example, if the users first name is Scott and Scott is a group member that has an ID of 1, we can deduce that Scott must be part of the 'Ratpack' group. We can check further by linking the two tables with a foreign key. If every group has a primary key then we can use the UserID as a foreign key; doing so will discard any ambiguity from the relation.

- Another relation that forms is a a relation of a set unto itself (R = SxS).
    - For example say we want to know that an ID is in fact unique (or something to that effect), then we could search to see if there is a symmetric relationship between an ID's and Set of Names. In other words, if the tuple (ID = 100, Name = 'Lucy') exists, then is it also the case that opposite order (Name = Lucy, ID = 100) exists? If this relation comes back and we have more than two tuples, we could know for certain that an ID was being used more than once because there should only be two of these symmetric relations in a set of 2 items. 

### AI Utilization Plan: 

A *small* amount of AI was/will be used for very minor things such as:
- An occasional alternative to a search engine.
- Infrequent formatting.

Very Rarely will AI be used to assist in the actual coding process. It is our goal to find real world sources and documentation from official channels. 

*IF* we do use AI do anything in any `meaningful` or `impactful` way, it will be disclosed in two ways:
1. In the deliverable document with a reference to where/how it was used.
2. Where the AI contribution was added to the project.




