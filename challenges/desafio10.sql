-- Descomente e altere as linhas abaixo:

CREATE TABLE SpotifyClone.favorite_songs(
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
    FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs(song_id),
    PRIMARY KEY (user_id, song_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.favorite_songs (user_id, song_id)
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
    (2, 4),
    (3, 1),
    (3, 5),
    (4, 4),
    (4, 6),
    (5, 3),
    (5, 7),
    (6, 4),
    (7, 6),
    (8, 1);