SELECT DISTINCT u.user_name AS usuario, 
IF(YEAR(MAX(p.playback_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.playback_history p
ON p.user_id = u.user_id
group by u.user_name
ORDER BY usuario;