SELECT
	u.name AS pessoa_usuaria,
    IF(MAX(YEAR(h.play_date)) >= 2021, "Ativa", "Inativa")  AS status_pessoa_usuaria
FROM
	SpotifyClone.users AS u
INNER JOIN
	SpotifyClone.history AS h
ON
	u.user_id = h.user_id
GROUP BY
	pessoa_usuaria
ORDER BY
	pessoa_usuaria;