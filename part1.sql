-- number 1
select * from invoice_line where unit_price > 0.99;
-- number 2
select
  invoice_date,
  customer.first_name,
  customer.last_name, 
  total 
from invoice
inner join customer on
  invoice.customer_id = customer.customer_id;
-- number 3
select 
  c.first_name as "Customer first name",
  c.last_name AS "Customer last name",
  emp.first_name AS "Employee first name",
  emp.last_name AS "Employee last name"
from employee as emp
inner join 
  customer as c
on c.support_rep_id = emp.employee_id
where emp.title='Sales Support Agent'

-- number 4
select 
  album.title,
  artist.name 
from album
inner join artist
on artist.artist_it=album._artist_id;
-- number 5
select distinct 
  plt.track_id,
  pl.name from playlist as pl
inner join playlist_track as plt on 
plt.playlist_id=pl.playlist_id
where pl.name='Music'
order by plt.track_id;
--number 6
select distinct trk.name from track as trk
inner join playlist_track as plt on
trk.track_id=plt.track_id
where plt.playlist_id=5;
-- number 7
select 
  trk.name as "Track Name",
  pl.name as "Playlist Name" 
from playlist as pl
inner join playlist_track as p_t 
  on pl.playlist_id = p_t.playlist_id 
inner join track as trk
  on trk.track_id = p_t.track_id;
--number 8;
select album.title, track.name from album
inner join track on album.album_id = track.album_id
inner join genre on genre.genre_id = track.genre_id
where genre.name = 'Alternative & Punk';