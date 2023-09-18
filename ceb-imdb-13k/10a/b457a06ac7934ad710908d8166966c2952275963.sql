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
AND (it1.id IN ('3','5','6'))
AND (mi1.info IN ('Brazil:10','Canada:14','Film-Noir','France:-16','Germany:Not Rated','Iceland:LH','India:A','India:U','India:UA','Ireland:15','Italy:VM18','Japan:R-15','Malaysia:18','News','Norway:12','Taiwan:GP','USA:TV-MA'))
AND (n.name ILIKE '%thomas%')
AND (kt.kind IN ('episode','movie','tv movie'))
AND (rt.role IN ('actor','cinematographer','composer','costume designer'))
GROUP BY mi1.info, n.name
