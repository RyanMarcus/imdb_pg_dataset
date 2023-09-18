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
AND (it1.id in ('6'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Mono'))
AND (mi2.info in ('Argentina:13','Canada:G','Germany:12','Iceland:L','Portugal:M/12','Sweden:11','UK:18','USA:X'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('production designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('based-on-novel','family-relationships','father-son-relationship','fight','gun','homosexual','independent-film','interview','jealousy','male-frontal-nudity','marriage','murder','new-york-city','sex','singing'))
