SELECT m.music AS cancao, COUNT(p.user_id) AS reproducoes FROM SpotifyClone.playback_history p
INNER JOIN SpotifyClone.musics m
ON m.music_id = p.music_id
GROUP BY m.music
ORDER BY reproducoes DESC, m.music ASC LIMIT 2;