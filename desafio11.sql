SELECT
	song_name AS 'nome_musica',
	CASE
	  WHEN song_name LIKE "%bard%" THEN REPLACE(song_name, 'Bard', 'QA')
      WHEN song_name LIKE "%amar%" THEN REPLACE(song_name, 'Amar', 'Code Review')
      WHEN song_name LIKE "%pais%" THEN REPLACE(song_name, 'Pais', 'Pull Requests')
      WHEN song_name LIKE "%SOUL%" THEN REPLACE(song_name, 'SOUL', 'CODE')
      WHEN song_name LIKE "%SUPERSTAR%" THEN REPLACE(song_name, 'SUPERSTAR', 'SUPERDEV')
	ELSE song_name
	END AS 'novo_nome'
FROM
	SpotifyClone.songs
WHERE
	song_name LIKE "%bard%"
	OR song_name LIKE "%amar%"
	OR song_name LIKE "%pais%"
	OR song_name LIKE "%SOUL%"
	OR song_name LIKE "%SUPERSTAR%"
ORDER BY
	song_name DESC;