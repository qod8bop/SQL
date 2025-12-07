--Исполнители
insert into performer (name)
values ('Исполнитель 1')

insert into performer (name)
values ('Исполнитель 2')

insert into performer (name)
values ('Исполнитель 3')

insert into performer (name)
values ('Исполнитель 4')


-- Жанры
insert into genre (name)
values ('Жанр 1')

insert into genre (name)
values ('Жанр 2')

insert into genre (name)
values ('Жанр 3')


--Альбомы
insert into albums (name, year)
values ('Альбом 1', '1999')

insert into albums (name, year)
values ('Альбом 2', '1998')

insert into albums (name, year)
values ('Альбом 3', '1979')


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
insert into tracklist
values (1,'A',"2:30")

insert into tracklist
values (1,'B',"2:30")

insert into tracklist
values (3,'B',"2:30")

insert into tracklist
values (4,'C',"2:30")

insert into tracklist
values (4,'D',"2:30")




insert into sborniki
values ('A')

insert into sborniki
values (1)