--Исполнители
insert into performer (name)
values ('Исполнитель 1')

insert into performer (name)
values ('Исполнитель 2')

insert into performer (name)
values ('Исполнитель 3')

insert into performer (name)
values ('Исполнитель')


-- Жанры
insert into genre (name)
values ('Жанр 1')

insert into genre (name)
values ('Жанр 2')

insert into genre (name)
values ('Жанр 3')


--Альбомы
insert into albums (name, year)
values ('Альбом 1', 1999)

insert into albums (name, year)
values ('Альбом 2', 1998)

insert into albums (name, year)
values ('Альбом 3', 1979)


--Исполнитель - жанр
insert into pergen 
values (1,1)

insert into pergen 
values (1,2)

insert into pergen 
values (2,3)

insert into pergen 
values (3,1)

insert into pergen 
values (4,2)


--Исполнитель - альбом
insert into peralb 
values (1,1)

insert into peralb 
values (2,1)

insert into peralb 
values (3,1)

insert into peralb 
values (1,2)

insert into peralb 
values (3,3)


--Треки
insert into tracklist (album_id, trackname, length) 
values (1,'A','02:30:0')

insert into tracklist (album_id, trackname, length) 
values (1,'B','02:30:0')

insert into tracklist (album_id, trackname, length) 
values (3,'B','02:40:0')

insert into tracklist (album_id, trackname, length) 
values (2,'C','02:50:0')

insert into tracklist (album_id, trackname, length) 
values (2,'D','03:30:0')

INSERT INTO tracklist (album_id, trackname, length) 
VALUES (1, 'E', '04:30:00');


--Сборники
insert into sborniki (name)
values ('AA')

insert into sborniki (name)
values ('AB')

insert into sborniki (name)
values ('AC')

insert into sborniki (name)
values ('BA')


--Сборники и треки
insert into sbtr (sb_id, tr_id)
values (1,3)

insert into sbtr (sb_id, tr_id)
values (1,2)

insert into sbtr (sb_id, tr_id)
values (1,1)

insert into sbtr (sb_id, tr_id)
values (2,3)

insert into sbtr (sb_id, tr_id)
values (2,3)

insert into sbtr (sb_id, tr_id)
values (4,2)

insert into sbtr (sb_id, tr_id)
values (4,2)

insert into sbtr (sb_id, tr_id)
values (3,2)

insert into sbtr (sb_id, tr_id)
values (3,5)



insert into sborniki (name,year)
values (11, 2019)

insert into sborniki (name,year)
values (2, 1488)

insert into sborniki (name,year)
values (1, 2020)

insert into sborniki (name,year)
values (4, 228)