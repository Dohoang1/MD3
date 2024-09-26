use classicmodel;


/* lay ra so lan mua hang + cac ma don hang cua 1 KH ma 124 */
select customers.customerNumber, orders.orderNumber
from customers
join orders
on customers.customerNumber = orders.customerNumber
where customers.customerNumber = 124;


/* lay ra so lan mua hang cua KH ma 124 */
select count(*) as `totalordortimes`
from customers
join orders
on customers.customerNumber = orders.customerNumber
where customers.customerNumber = 124;


/* xem chi tiet sp va sl sp tren 1 order
mqh 3 bang */
select products.productCode, products.productName
from orders
join orderdetails
on orders.orderNumber = orderdetails.orderNumber
join products
on orderdetails.productCode = products.productCode
where orders.orderNumber = 10100;


/* lay ra va nhom lai du lieu cua bang status, hien thi so luong cua tung trang thai trong cot status*/
select orders.status, count(*) as total
from orders
group by orders.status;


/* sap xep du lieu, desc la giam dan, asc la tang dan  */
select *  from orders
order by orders.orderNumber desc
