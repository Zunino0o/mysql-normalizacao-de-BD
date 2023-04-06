SELECT 
    COUNT(DISTINCT X.song_id) AS cancoes,
    COUNT(DISTINCT Z.artist_id) AS artistas,
    COUNT(DISTINCT Z.album_id) AS albuns
FROM
    SpotifyClone.songs AS X
        INNER JOIN
    SpotifyClone.albums AS Z;