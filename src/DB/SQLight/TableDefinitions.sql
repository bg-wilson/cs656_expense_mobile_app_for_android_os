/*
- This file is for table defs for the mobile app DB
- Will identify superkeys and candidate keys for each table under "UNIQUE (col1, col2, etc.)" for now
-Composite keys will be written as "PRIMARY KEY (col1, col2, etc.)"
*/

-- #include <sqlite3.h> --idk if we need this??


--TODO: ADD FK details and figure out how we want to implemement auto increment for integer primary keys

/* ****************************USER**************************** */

CREATE TABLE "UserAuthentication" (
    "UserPhoneNumber" Text NOT NULL,
    "UserEmail" Text NOT NULL,
    PRIMARY KEY ("UserPhoneNumber"),
    UNIQUE ("UserPhoneNumber", "UserEmail")
);

CREATE TABLE "UserNames" (
    "UserID" INTEGER NOT NULL,
    "UserName" Text NOT NULL,
    "UserFirstName" Text NOT NULL,
    "UserLastName" Text,
    PRIMARY KEY ("UserID"),
    UNIQUE ("UserID", "UserName")

);

CREATE TABLE "UserCredentials" (
    "UserID" INTEGER NOT NULL,
    "UserPhoneNumber" Text NOT NULL,
    "UserPassword" Text NOT NULL,
    PRIMARY KEY ("UserID", "UserPhoneNumber"),
    UNIQUE ("UserID", "UserPhoneNumber")
);

CREATE TABLE "UserDetails" (
    "UserID" INTEGER NOT NULL,
    "UserIndividualRent" FLOAT NOT NULL DEFAULT 0.00,
    PRIMARY KEY ("UserID"),
    UNIQUE ("UserID")
);


/* ****************************GROUP**************************** */
CREATE TABLE "Groups" (
    "GroupID" INTEGER NOT NULL,
    "GroupName" Text NOT NULL,
    "GroupSize" INTEGER NOT NULL DEFAULT 1,
    PRIMARY KEY ("GroupID"),
    UNIQUE ("GroupID")
);

--SQLite doesnt have DATE type, using TEXT instead
 --"RentTotal" --> This is a groups total rent, may need to rename for clarity 
CREATE TABLE "RentDetails" (
    "RentID" INTEGER NOT NULL,
    "RendDueDate" TEXT NOT NULL DEFAULT CURRENT_DATE,   
    "RentTotal" FLOAT NOT NULL DEFAULT 0.00,
    PRIMARY KEY ("RentID"),
    UNIQUE ("RentID")
);

CREATE TABLE "RentPerPerson" (
    "RentID" INTEGER NOT NULL,
    "GroupID" INTEGER NOT NULL,
    "RentPerPerson" FLOAT NOT NULL DEFAULT 0.00,
    PRIMARY KEY ("RentID", "GroupID"),
    UNIQUE ("RentID", "GroupID")
);


/* ****************************USER/GROUP --> BRIDGE**************************** */


CREATE TABLE "UserGroupLookup" (
    "UserID" INTEGER NOT NULL,
    "GroupID" INTEGER NOT NULL,
    PRIMARY KEY ("UserID", "GroupID"),
    UNIQUE ("UserID", "GroupID")
);

