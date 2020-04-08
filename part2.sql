--number 1
update customer set fax = null where fax is not null;
--number 2
update customer set company = 'Self' where company is null
--number 3
update customer set last_name = 'Thompson' where customer.first_name = 'Julia' and customer.last_name = 'Barnett';
--number 4
update customer set support_rep_id = 4 where email = 'luisrojas@yahoo.cl'
--number 5
update track set composer = 'The darkness around us'
where track_id in 
  (select track_id from track
    inner join genre on track.genre_id = genre.genre_id
    where genre.name = 'Metal' and track.composer is null
  );
