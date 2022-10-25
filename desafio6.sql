SELECT
	MIN(p.price) AS 'faturamento_minimo',
    MAX(p.price) AS 'faturamento_maximo',
	CONVERT(ROUND(AVG(p.price), 2), CHAR) AS 'faturamento_medio',
	CONVERT(ROUND(SUM(p.price), 2), CHAR) AS 'faturamento_total'
FROM
	SpotifyClone.users u
	INNER JOIN SpotifyClone.plan p ON u.plan_id = p.plan_id;