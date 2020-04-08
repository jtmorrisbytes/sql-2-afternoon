create table users (
  user_id serial primary key,
  name text,
  email text
 );
 create table product (
   product_id int primary key,
   name text,
   price money
);
 create table orders (
  order_id int primary key
);
create table orders_product (
  orders_product_id serial primary key,
  order_id int references orders(order_id),
  product_id int references product(product_id)
);
insert into users (name, email) values
('jordan morris', 'jthecybertinkerer@gmail.com'),
('jane doe', 'cool@sign.bob.com'),
('john smith', 'respect@thatiswhatitmeanstome.com');
insert into product(product_id, name, price)values
(0, 'broccoli', 4.99),
(1, 'apples sauce',5.99),
(2, 'oranges',4.99);
insert into orders(order_id)
values
  (0),
  (1),
  (2);
 insert into orders_product(order_id,product_id)
values (0,0),(0,1),(0,2),(1,0),(1,2),(2,1);
-- first order
 select product.price, product.name from orders
 inner join orders_product on orders.order_id = orders_product.order_id
 inner join product on product.product_id = orders_product.product_id
where orders.order_id = 0;
-- sum of all orders
 select sum(product.price) as "Total Cost", orders.order_id from orders
 inner join orders_product on orders.order_id = orders_product.order_id
 inner join product on product.product_id = orders_product.product_id
 group by orders.order_id order by orders.order_id
