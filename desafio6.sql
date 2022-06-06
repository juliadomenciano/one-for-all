SELECT MIN(pricing) AS faturamento_minimo, MAX(pricing) AS faturamento_maximo,
ROUND(AVG(pricing),2) AS faturamento_medio, ROUND(SUM(pricing),2) AS faturamento_total
FROM SpotifyClone.subscription_plans s
RIGHT JOIN SpotifyClone.users u
ON u.plan_id = s.plan_id;