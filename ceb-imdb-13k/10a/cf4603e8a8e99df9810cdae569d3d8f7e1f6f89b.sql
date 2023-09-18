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
AND (it1.id IN ('4','5'))
AND (mi1.info IN ('Chile:14','Finland:K-15','Germany:6','Hong Kong:IIB','Italy:T','New Zealand:M','Norway:16','Polish','Portugal:M/16','Singapore:NC-16','South Korea:18','Sweden:Btl','Switzerland:14','UK:12A','USA:Not Rated','USA:Passed','West Germany:16'))
AND (n.name ILIKE '%pick%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('director','editor','producer','production designer'))
GROUP BY mi1.info, n.name
