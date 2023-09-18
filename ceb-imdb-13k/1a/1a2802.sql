SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('5'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Canada:13+','Canada:G','Canada:R','Finland:S','Germany:16','Iceland:L','Norway:18','Singapore:M18','Singapore:NC-16','South Korea:15','Sweden:11','UK:U','West Germany:12','West Germany:16','West Germany:o.Al.'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('movie','video game','video movie'))
AND (rt.role in ('actress','director','editor','guest','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
