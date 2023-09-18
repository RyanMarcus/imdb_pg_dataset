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
AND (it1.id IN ('5','6'))
AND (mi1.info IN ('Argentina:16','Argentina:Unrated','Australia:MA','Chile:14','Dolby SR','Dolby','France:-12','France:U','Germany:16','Iceland:L','Mono','Netherlands:16','Portugal:M/16','South Korea:18','Spain:13','Spain:18','Sweden:15'))
AND (n.name ILIKE '%marí%')
AND (kt.kind IN ('movie','tv movie'))
AND (rt.role IN ('actress','cinematographer','costume designer'))
GROUP BY mi1.info, n.name
