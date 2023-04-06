SELECT
	ar.name AS artista,
    al.name AS album,
    COUNT(f.user_id) AS pessoas_seguidoras
FROM
	SpotifyClone.artists ar
INNER JOIN
	SpotifyClone.albums al
ON
	ar.artist_id = al.artist_id
INNER JOIN
	SpotifyClone.followed_artists f
ON
	ar.artist_id = f.artist_id
GROUP BY
	artista, album
ORDER BY
	pessoas_seguidoras DESC, artista, album;