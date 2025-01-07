-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Categories" (
    "category_id" VARCHAR   NOT NULL,
    "category" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Categories" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "Subcategories" (
    "subcategory_id" VARCHAR   NOT NULL,
    "subcategory" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Subcategories" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "email" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Campaigns" (
    "cf_id" INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "category_id" VARCHAR   NOT NULL,
    "subcategory_id" VARCHAR   NOT NULL,
    "company_name" VARCHAR   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "currency" VARCHAR   NOT NULL,
    "launch_date" DATETIME   NOT NULL,
    "end_date" DATETIME   NOT NULL,
    CONSTRAINT "pk_Campaigns" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaigns" ADD CONSTRAINT "fk_Campaigns_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaigns" ADD CONSTRAINT "fk_Campaigns_category_id" FOREIGN KEY("category_id")
REFERENCES "Categories" ("category_id");

ALTER TABLE "Campaigns" ADD CONSTRAINT "fk_Campaigns_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Subcategories" ("subcategory_id");

