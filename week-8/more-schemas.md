#Release 2: Create a One-to-one Schema

![one-to-one schema](#)

I believe the above is a decent example of a one-to-one
relationship. Each movie in this example will have at most
one studio, but some movies included will be independents that
have no studio attached.

![many-to-many](#)

##Reflection

**What is a one-to-one database?**
A one-to-one database is where two databases are conected. The database
using a primary key will always have the one using a foreign key. But
when going the opposite direction, the value might be null.

**When would you use a one-to-one database? (Think generally, not in
 terms of the example you created).**
 When one side of the relationship always has the other, but not
 necessarily the other way around.

**What is a many-to-many database?**
A many-to-many database is used when both sides of the relationship
have many instances of the other.

**When would you use a many-to-many database? (Think generally, not in terms of the example you created).**
When two tables each share many instances of their related table.

**What is confusing about database schemas? What makes sense?**
When to use one-to-one and many-to-many is a bit of a brain twister.
Table structure and primary key / foreign key relations are very
clear.