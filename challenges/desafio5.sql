SELECT
	s.song AS cancao,
    count(h.song_id) AS reproducoes
FROM
	SpotifyClone.songs as s
INNER JOIN
	SpotifyClone.history as h
ON
	h.song_id = s.song_id
INNER JOIN
	SpotifyClone.users as u
ON
	h.user_id = u.user_id
GROUP BY
	cancao
ORDER BY
	reproducoes DESC, cancao
LIMIT
	2;