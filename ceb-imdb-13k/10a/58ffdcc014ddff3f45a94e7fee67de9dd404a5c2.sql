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
AND (mi1.info IN ('Argentina:13','Australia:G','Australia:M','Australia:PG','Canada:PG','Finland:K-16','Iceland:16','Netherlands:12','Portugal:M/12','Sweden:15','UK:15','UK:PG','USA:Approved','USA:PG-13','USA:TV-14'))
AND (n.name ILIKE '%mccall%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('director','editor','miscellaneous crew','production designer'))
GROUP BY mi1.info, n.name
