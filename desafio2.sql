SELECT COUNT(m.music) AS cancoes, COUNT(DISTINCT a.artist) AS artistas, COUNT(DISTINCT alb.album) AS albuns FROM SpotifyClone.musics AS m
INNER JOIN SpotifyClone.artists AS a
ON m.artist_id = a.artist_id
INNER JOIN SpotifyClone.albums AS alb
ON m.album_id = alb.album_id;