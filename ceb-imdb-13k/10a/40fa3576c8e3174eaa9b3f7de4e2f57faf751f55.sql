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
AND (it1.id IN ('3','5'))
AND (mi1.info IN ('Adult','Canada:R','Chile:TE','Czech Republic:12','Finland:K-10','France:Unrated','Hungary:16','India:U/A','Japan:PG-12','Malaysia:(Banned)','Malaysia:18SG','Malaysia:PG-13','New Zealand:PG','Norway:10','Singapore:R21','USA:TV-Y7'))
AND (n.name ILIKE '%jone%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('director','editor','production designer'))
GROUP BY mi1.info, n.name
