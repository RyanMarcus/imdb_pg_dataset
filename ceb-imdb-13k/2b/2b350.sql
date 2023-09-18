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
AND (it1.id in ('8'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Argentina','USA'))
AND (mi2.info in ('Argentina:13','Argentina:Atp','Australia:M','Philippines:PG-13'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('miscellaneous crew'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (k.keyword IN ('bare-chested-male','blood','doctor','family-relationships','father-son-relationship','friendship','hardcore','homosexual','husband-wife-relationship','kidnapping','lesbian','love','male-frontal-nudity','murder','non-fiction','one-word-title','oral-sex','police','singing','surrealism'))
