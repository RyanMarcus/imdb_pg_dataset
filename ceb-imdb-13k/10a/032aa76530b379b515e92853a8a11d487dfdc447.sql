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
AND (it1.id IN ('4','5','6'))
AND (mi1.info IN ('Argentina:X','Belgium:16','Canada:16+','Czech Republic:12','Hungarian','Indonesia:Dewasa','Japan:R-18','Malaysia:18PL','New Zealand:R13','None','Singapore:(Banned)','South Africa:10V','South Africa:PG','Swiss German','USA:M','USA:NC-17','Ukrainian','Urdu','Venezuela:PG-13','Vietnamese'))
AND (n.name ILIKE '%peter%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('cinematographer','editor','production designer'))
GROUP BY mi1.info, n.name
