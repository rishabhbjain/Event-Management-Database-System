-- EventDatabase
use db;

-- VIEWS

-- 1.view event details
select * from eventdetails;

-- 2.view eventartistdetails
select * from eventartistdetails;

-- 3.view eventseatdetails
select * from EventSeatDetails;

-- 4.view persons details
select * from PersonDetails;

-- 5.view useraccountdetails
select * from UserAccountDetails;

-- STORED PROCEDURES

-- 6.search_by_event
CALL search_by_event('UMF');

-- 7.search_by_artist
CALL search_by_artist('Martin');

-- 8.seats_booked_for_event
Call seats_booked_for_event('SUNBURN');

-- 9.revenue_for_event
Call revenue_for_event('SUNBURN');


-- TRIGGERS 

-- 10.before_person_update 
UPDATE person
SET person_contactno ='+1(877)444-765'
where person_id = 1;

show triggers;

select * from person_old;

-- 11.after_person_card_details_inserted

Insert into card(card_id,card_holder_fname,card_holder_lname,card_type,card_no,card_cvv,card_expirydate,userAccount_UserAccount_id)
VALUES(5,'Devanshi','Vikramsey','MASTER',sha('5432-8765-3453-5467'),sha('256'),'2021-10-09',5);

show triggers;

select * from after_person_card_details_inserted;

-- Transaction

-- 12.with Rollback
set autocommit = 0;
start transaction ;
 insert into db.order(order_id,order_datetime,useraccount_useraccount_id,seat_seat_id,seat_event_event_id)
 values(5,'2017-08-12 16:16:16',5,5,1) ;
 insert into db.payment(payment_id,payment_amount,payment_datetime,order_order_id,card_card_id)
values(5,100,'2017-08-12 16:18:00',5,5);
ROLLBACK;
update seat 
SET seat_status = 1 
where seat_id = 5 and event_event_id = 1;
commit ;

select * from seat;



-- 13.Without Rollback
set autocommit = 0;
start transaction ;
 insert into db.order(order_id,order_datetime,useraccount_useraccount_id,seat_seat_id,seat_event_event_id)
 values(5,'2017-08-12 16:16:16',5,5,1) ;
 insert into db.payment(payment_id,payment_amount,payment_datetime,order_order_id,card_card_id)
values(5,100,'2017-08-12 16:18:00',5,5);
update seat 
SET seat_status = 1 
where seat_id = 5 and event_event_id = 1;
commit ;

select * from seat;


-- Sensitive information encryption

-- 14.useraccount password encryption
select * from useraccount;


-- 15.card details encryption
select * from card;

