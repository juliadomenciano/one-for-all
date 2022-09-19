SELECT music AS nome_musica,
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(music, 'Streets','Code Review'),
'Her Own','Trybe'),
'Inner Fire','Project'),
'Silly','Nice'),
'Circus','Pull Request')
AS novo_nome FROM SpotifyClone.musics
WHERE music LIKE '%Streets'
OR music LIKE '%Her Own'
OR music LIKE '%Inner Fire'
OR music LIKE '%Silly'
OR music LIKE '%Circus'
ORDER BY nome_musica;
