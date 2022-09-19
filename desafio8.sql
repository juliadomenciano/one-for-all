SELECT a.artist AS artista, alb.album AS album FROM SpotifyClone.artists a
INNER JOIN SpotifyClone.albums alb
ON alb.artist_id = a.artist_id
HAVING artista = 'Walter Phoenix';
