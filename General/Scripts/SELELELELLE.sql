--Самый длительный трек
select trackname,  MAX(length)  from tracklist
group by trackname, length
order by length desc;

--Продолжительность не меньше 3,5 минут
select trackname from tracklist
where length >= '03:30:00';

--Названия сборников, вышедших в период с 2018 по 2020 годы включительно.
select name from sborniki
where year between 2018 and 2020;


--Исполнители, чьё имя состоит из одного слова.
select name from performer
where name not like '% %';

--Название треков, которые содержат слова «мой» или «my».
select trackname from tracklist
where trackname like '%my%' or trackname like '%мой%'