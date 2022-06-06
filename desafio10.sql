SELECT m.music AS nome, COUNT(p.user_id) AS reproducoes FROM SpotifyClone.playback_history p
INNER JOIN SpotifyClone.musics m
ON m.music_id = p.music_id
INNER JOIN SpotifyClone.users u
ON u.user_id = p.user_id
INNER JOIN SpotifyClone.subscription_plans s
ON s.plan_id = u.plan_id
WHERE s.plan = 'gratuito' or s.plan = 'pessoal'
GROUP BY nome
ORDER BY nome;