SELECT
	u.name AS pessoa_usuaria,
    COUNT(h.play_date) AS musicas_ouvidas,
    ROUND(SUM(s.length / 60), 2) AS total_minutos
FROM
	SpotifyClone.users as u
INNER JOIN
	SpotifyClone.history as h
ON
	h.user_id = u.user_id
INNER JOIN
	SpotifyClone.songs as s
ON
	s.song_id = h.song_id
GROUP BY
	pessoa_usuaria
ORDER BY
	pessoa_usuaria;