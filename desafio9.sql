SELECT
	COUNT(*) AS 'quantidade_musicas_no_historico'
FROM
	SpotifyClone.users u
	INNER JOIN SpotifyClone.play p ON u.user_id = p.user_id
WHERE
	u.user_name = 'Barbara Liskov';