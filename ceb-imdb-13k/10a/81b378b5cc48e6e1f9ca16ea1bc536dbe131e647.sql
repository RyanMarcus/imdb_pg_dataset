SELECT n.name, mi1.info, MIN(t.production_year), MAX(t.production_year)
FROM title as t,
kind_type as kt,
movie_info as mi1,
info_type as it1,
cast_info as ci,
role_type as rt,
name as n
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND (it1.id IN ('3','5','8'))
AND (mi1.info IN ('Bahamas','Belgium:KNT','Belgium:Tous','Greece:K-17','Iceland:LH','Luxembourg','Mexico:D','Morocco','New Zealand:G','Norway:5','Pakistan','Palestine','Puerto Rico','Senegal','Slovakia:12','Syria','UK:E','UK:R18'))
AND (n.name ILIKE '%mar%')
AND (kt.kind IN ('episode','movie','video movie'))
AND (rt.role IN ('cinematographer','composer','editor','writer'))
GROUP BY mi1.info, n.name
