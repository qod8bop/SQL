--Без связей
create table if not exists Genre (
	id SERIAL primary key, 
	name VARCHAR(60) not NULL
);

create table if not exists Performer (
	id SERIAL primary key, 
	name VARCHAR(60) not NULL
);

create table if not exists Albums (
	id SERIAL primary key,
	name VARCHAR(80) not null,
	year VARCHAR(5)
);

create table if not exists Sborniki(
	id SERIAL primary key,
	name VARCHAR(60) not NULL
);

alter table sborniki 
	add column year INT


ALTER TABLE Sborniki 
    ALTER COLUMN name TYPE VARCHAR(80) 
    USING name::VARCHAR(80);




--Один к многим
create table if not exists Tracklist(
	id SERIAL primary key,
	album_id INTEGER references Albums(id),
	trackname VARCHAR(60),
	length time not NULL
);


--Многие к многим
create table if not exists pergen (
	Per_id INTEGER references Performer(id),
	Gen_id INTEGER references Genre(id)
);

create table if not exists peralb (
	Per_id INTEGER REFERENCES Performer(id),
	Alb_id INTEGER references Albums(id)
);

create table if not exists SBTR (
	SB_id INTEGER references Sborniki(id),
	TR_id INTEGER references Tracklist(id)
);
