SELECT
    COUNT(h.song_id) AS musicas_no_historico
FROM
	SpotifyClone.users u
INNER JOIN
	SpotifyClone.history h
ON
	u.user_id = h.user_id
GROUP BY
	u.name
HAVING
	u.name = "Barbara Liskov";