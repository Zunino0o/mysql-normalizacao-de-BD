SELECT 
    ar.name AS artista,
    al.name AS album
FROM
	SpotifyClone.artists ar
INNER JOIN
	SpotifyClone.albums al
ON
	al.artist_id = ar.artist_id
WHERE
	ar.name = "Elis Regina";