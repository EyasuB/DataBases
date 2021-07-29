use myhotel;
select guestName, guestaddress from guest as g
where exists
(select *
from booking b, hotel h
where b.hotelNo = h.hotelNo AND city='chicago' AND b.guestNo= g.guestNo
)
order by guestName desc;

select r.roomno, type, price, city
from hotel h, room r
where price <130 and type = 'Standard' and h.hotelno = r.hotelno;


select dateTo
from Booking
where dateTo is null;

select distinct count(hotelName)
from Hotel;

select round(avg(price),1)
from room;

 select count(h.hotelNo) as TotalBooked , h.hotelName,h.city,h.hotelNo
 from hotel h
 join booking as b
 on h.hotelno= b.hotelno
 group by hotelNo;
 
select Sum(roomNo)
from booking;


select round(avg(price),1) 
from room;

select count(*) 
from booking; 

select g.guestNo, g.guestName,g.guestAddress, count(b.hotelNo) as TotalBooking
from guest as g
left join booking b
on g.guestNo = b. guestNo
group by g.guestNo;

update guest 
set guestaddress='1490 Jersey Village Road' 
where guestname= 'Bob' AND guestNo='2';

delete from booking b
where b.guestNO in (select guestno from guest where guestName='Bob' and dateTo>'2021-01-01');

SET sql_safe_updates =0;
update room 
set price = price+ 0.05*price
where type= 'Executive';

update room 
set price =price+ price*0.03
where type = 'Standard';





