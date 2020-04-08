--1
select genre.name, count(track_id) from track
inner join genre on genre.genre_id = track.genre_id
group by genre.genre_id;
--2
select genre.name, count(track_id) from track
inner join genre on genre.genre_id = track.genre_id
where genre.name in ('Pop', 'Rock')
group by genre.genre_id;
--3
select sum(album.album_id) "Num Albums" from artist
inner join album on
artist.artist_id = album.album_id
group by artist.artist_id;
