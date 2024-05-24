CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(100)   NOT NULL,
    "description" text   NOT NULL,
    "goal" numeric(10,2)   NOT NULL,
    "pledged" numeric(10,2)   NOT NULL,
    "outcome" varchar(50)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(10)   NOT NULL,
    "currency" varchar(10)   NOT NULL,
    "launch_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar(10)   NOT NULL,
    "subcategory_id" varchar(10)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);
select * from campaign
CREATE TABLE "category" (
    "category_id" varchar(10)   NOT NULL,
    "category_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);
CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10)   NOT NULL,
    "subcategory_name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);
CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(100)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);
select *
select * from category;
select * from campaign;
select * from contacts;
select * from subcategory;

select sum(pledged) as total_amount_pledged
from campaign

select sum(pledged)/count(backers_count) as avg_pledge
from campaign

select campaign.category_id, category.category_id, category.category_name
from campaign
inner join category
on campaign.category_id = category.category_id;
select campaign.category_id, campaign.contact_id, category.category_id, contacts.first_name, contacts.last_name
from category
inner join campaign
on category.category_id = campaign.category_id
inner join contacts
on campaign.contact_id = contacts.contact_id;










