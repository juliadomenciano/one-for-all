SELECT COUNT(p.music_id) AS quantidade_musicas_no_historico FROM SpotifyClone.playback_history p
INNER JOIN SpotifyClone.users u
ON u.user_id = p.user_id
WHERE u.user_name = 'Bill';