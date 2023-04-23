SELECT * FROM dz1.mobile_phones;

select product_name, manufacturer, price from mobile_phones
where product_count > 2;

select product_name from mobile_phones
where manufacturer = 'Samsung';

select * from mobile_phones
where product_name LIKE '%Iphone%';

select * from mobile_phones
where manufacturer LIKE '%Samsung%';

select * from mobile_phones
where product_name LIKE '%8%';

/*select * from mobile_phones
where product_name between 0 and 9;*/
