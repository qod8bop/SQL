-- Количество исполнителей в каждом жанре
SELECT genre.name, COUNT(DISTINCT pergen.per_id) AS performer_count
FROM genre 
LEFT JOIN pergen ON genre.id = pergen.gen_id
GROUP BY genre.name
ORDER BY performer_count DESC;


--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT  COUNT(tracklist.id) AS tracks_count
FROM tracklist
JOIN Albums ON tracklist.album_id = albums.id
WHERE albums.year BETWEEN 2019 AND 2020;


--Средняя продолжительность треков по каждому альбому
SELECT albums.name ,albums.year, AVG(tracklist.length) AS avg_duration_seconds FROM Albums
JOIN Tracklist  ON albums.id = tracklist.album_id
GROUP BY albums.id, albums.name, albums.year
ORDER BY avg_duration_seconds DESC;


--Не выпустили альбом в 2020 году
SELECT performer.name FROM performer 
WHERE performer.id NOT IN ( SELECT DISTINCT peralb.per_id FROM peralb
    JOIN Albums ON peralb.alb_id = albums.id
    WHERE albums.year = 2020)
ORDER BY performer.name;

--Названия сборников, в которых присутствует конкретный исполнитель
SELECT DISTINCT Sborniki.name, Sborniki.year, performer.name AS peformer_name FROM Sborniki
JOIN sbtr ON Sborniki.id = sbtr.sb_id
JOIN tracklist ON sbtr.tr_id = tracklist.id
JOIN Albums ON tracklist.id = albums.id
JOIN peralb ON albums.id = peralb.alb_id
JOIN performer ON peralb.per_id = performer.id
WHERE performer.name = 'Исполнитель'
ORDER BY sborniki.year DESC;