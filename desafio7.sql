SELECT a.artist AS artista, alb.album AS album, COUNT(f.user_id) AS seguidores FROM SpotifyClone.followers f
INNER JOIN SpotifyClone.artists a
ON a.artist_id = f.artist_id
INNER JOIN SpotifyClone.albums alb
ON alb.artist_id = f.artist_id
GROUP BY alb.album_id
ORDER BY seguidores DESC, artista, album;