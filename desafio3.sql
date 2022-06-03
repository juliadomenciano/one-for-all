SELECT u.user_name AS usuario, COUNT(p.music_id) AS qtde_musicas_ouvidas, ROUND(SUM(m.duration_seconds /60), 2) AS total_minutos FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.playback_history p
ON u.user_id = p.user_id
INNER JOIN SpotifyClone.musics m
ON p.music_id = m.music_id
GROUP BY user_name
ORDER BY usuario;