-- TABLE PERSON--------------------
-- 1
create table person(
  person_id serial primary key,
  name varchar(20),
  age int,
  height int,
  city varchar(20),
  favorite_color varchar (20)
);

-- 2
insert into person(
  name, favorite_color, city, height, age
  ) values (
    'Brian', 'Green', 'Midvale', 188, 28  
    );

insert into person(
  name, favorite_color, city, height, age
  ) values (
    'Brittney', 'Yellow', 'Midvale', 176, 29
    );

insert into person(
  name, favorite_color, city, height, age
  ) values (
    'Evan', 'Orange', 'Midvale', 190, 26
    );

insert into person(
  name, favorite_color, city, height, age
  ) values (
    'Kristin', 'Pink', 'Salt Lake City', 171, 24
    );

insert into person(
  name, favorite_color, city, height, age
  ) values (
    'Julie', 'Red', 'Oceanside', 165 , 53
    );

-- 3
select * from person
order by height desc;

-- 4
select * from person
order by height asc;

-- 5
select * from person
order by age desc;

-- 6
select * from person
where age > 20;

-- 7
select * from person
where age = 18

-- 8
select * from person
where age < 20 or age > 30;

-- 9
select * from person
where age != 27;

-- 10
select * from person
where favorite_color != 'Red';

-- 11
select * from person
where favorite_color != 'Red' and favorite_color != 'Blue';

-- 12
select * from person
where favorite_color = 'Orange' or favorite_color = 'Green';

-- 13
select * from person
where favorite_color in ('Orange', 'Green', 'Blue');

-- 14
select * from person
where favorite_color in ('Yellow', 'Purple');


-- TABLE ORDERS--------------------
-- 1
create table orders(
  order_id serial primary key,
  person_id int,
  product_name text,
  product_price float,
  quantity int
  );

-- 2
insert into orders(
  quantity, product_price, product_name, person_id
  ) values (
    1, 4.99, 'Big Mac', 1
    );

insert into orders(
  quantity, product_price, product_name, person_id
  ) values (
    1, 2.59, 'Large Fries', 1
    );

insert into orders(
  quantity, product_price, product_name, person_id
  ) values (
    2, 1.10, 'Cheeseburger', 2
    );

insert into orders(
  quantity, product_price, product_name, person_id
  ) values (
    1, 0.99, 'Large Coke', 2
    );

insert into orders(
  quantity, product_price, product_name, person_id
  ) values (
    1, 1.25, 'Apple Pie', 3
    );

-- 3
select * from orders;

-- 4
select sum(quantity) from orders;

-- 5
select sum(product_price) from orders;

-- 6
select sum(product_price) from orders
where person_id = 1;


-- TABLE ARTIST--------------------
-- 1
insert into artist(
  name
  ) values (
    'Distrubed'
    );

insert into artist(
  name
  ) values (
    'Maroon 5'
    );

insert into artist(
  name
  ) values (
    'Dance Gavin Dance'
    );
-- 2
select * from artist order by (name) desc
limit 10;

-- 3
select * from artist order by (name)
limit 5;

-- 4
select * from artist 
where name like 'Black%';

-- 5
select * from artist
where name like '%Black%'


-- TABLE EMPLOYEE--------------------
-- 1
select first_name, last_name from employee 
where  city = 'Calgary';

-- 2
select birth_date from employee
order by (birth_date) desc
limit 1;

-- 3
select birth_date from employee
order by (birth_date)
limit 1;

-- 4
select * from employee
where reports_to = 2;

-- 5
select count(*) from employee
where city = 'Lethbridge';


-- TABLE INVOICE--------------------
-- 1
select count(*) from invoice
where billing_country = 'USA';

-- 2
select * from invoice
order by (total) desc
limit 1;

-- 3
select * from invoice
order by (total)
limit 1;

-- 4
select * from invoice
where total > 5;

-- 5
select count(*) from invoice
where total < 5;

-- 6
select count (*) from invoice
where billing_state in ('CA', 'TX', 'AZ');

-- 7
select avg(total) from invoice;

-- 8
select sum(total) from invoice;