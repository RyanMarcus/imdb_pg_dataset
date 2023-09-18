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
AND (it1.id in ('1'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('104','106','16','18','80','91','94','97','USA:90'))
AND (mi2.info in ('Adult','Comedy','Drama'))
AND (kt.kind in ('episode','video movie'))
AND (rt.role in ('miscellaneous crew'))
AND (n.gender in ('m'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('character-name-in-title','dancing','dog','family-relationships','female-frontal-nudity','female-nudity','gay','new-york-city','non-fiction','nudity','number-in-title','police','sequel','singer','singing','song','tv-mini-series','violence'))
