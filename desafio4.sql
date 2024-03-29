SELECT
	u.user_name AS 'usuario',
	IF (
		YEAR(MAX(p.play_date)) >= 2021,
		'Usuário ativo',
		'Usuário inativo'
	) AS 'status_usuario'
FROM
	SpotifyClone.users u
	INNER JOIN SpotifyClone.play p ON u.user_id = p.user_id
GROUP BY
	u.user_name
ORDER BY
	u.user_name;