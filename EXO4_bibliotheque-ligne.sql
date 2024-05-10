
create database bibligne -- se their name bookstore
use bibligne

create table authors( -- To create table their name authors 
authorid int primary key, -- To create a colummn named authorid 
firstname varchar(50), -- To create a colummn named last_name
lastname varchar(50) -- To create a colummn named last_name
);
create table categories( -- To create table their name employer 
categoryid int primary key, -- To create a colummn named employerid 
categoryname varchar(50) -- To create a colummn named first_name
);

create table books( -- To create table their name books 
bookid int primary key, -- To create a colummn named bookid 
title varchar(50), -- To create a colummn named title
authorid int , --varchar(50), -- To create a colummn named authorid
categoryid int , -- varchar(50) -- To create a colummn named categoryid 
foreign key (authorid) references authors (authorid),
foreign key (categoryid) references categories (categoryid)
--price decimal(10,2) -- To create a colummn named price 
);



insert into authors(authorid,firstname,lastname)
values(1,'saidA','laouedjA'),
(2,'saidB','laouedjB');

select *
from authors



insert into categories(categoryid,categoryname)
values(1,'categoryA'),
(2,'categoryB');

select *
from categories


insert into books(bookid,title,authorid, categoryid)
values(1,'bookA',1,1),
(2,'bookB',2,2);


select *
from books


-- to display book name, authors name category 

select
-- b.title => [Database].[Table].[colummn] = books.title
b.title as bookname,  -- rename the title of the column as bookname 
a.firstname+''+a.lastname as authorname,   -- to join first name with last name in one column renamed authorname
c.categoryname as category  -- rename the categoryname As category

FROM
books b
JOIN 
authors a on b.authorid=a.authorid
join
categories c on b.categoryid = c.categoryid
