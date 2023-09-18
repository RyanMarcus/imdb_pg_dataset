SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n,
movie_keyword as mk,
keyword as k
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('5'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Australia:M','Finland:(Banned)','Finland:K-12','Iceland:L','India:U','UK:18','UK:A','UK:PG','UK:X','USA:Not Rated','USA:PG','USA:Passed','USA:Unrated','West Germany:18','West Germany:6'))
AND (mi2.info in ('Black and White','Color'))
AND (kt.kind in ('tv series','video game','video movie'))
AND (rt.role in ('actress','composer'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('bare-breasts','based-on-play','dog','gay','homosexual','hospital','husband-wife-relationship','independent-film','kidnapping','lesbian-sex','marriage','number-in-title','police','song'))
