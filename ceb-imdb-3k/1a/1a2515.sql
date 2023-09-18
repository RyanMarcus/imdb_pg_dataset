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
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:16','Iceland:14','India:U','Mexico:A','Norway:10','Norway:15','Peru:18','South Korea:18','UK:15','USA:Unrated','West Germany:12','West Germany:16'))
AND (mi2.info IN ('Peru:1987','Peru:1988','Peru:1989'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
