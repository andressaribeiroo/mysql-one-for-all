SELECT
	u.user_name AS 'usuario',
	COUNT(*) AS 'qt_de_musicas_ouvidas',
	ROUND(SUM(s.song_length) / 60, 2) AS 'total_minutos'
FROM
	SpotifyClone.users u
	INNER JOIN SpotifyClone.play p ON u.user_id = p.user_id
	INNER JOIN SpotifyClone.songs s ON p.song_id = s.song_id
GROUP BY
	u.user_name
ORDER BY
	u.user_name;