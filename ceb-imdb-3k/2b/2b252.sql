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
AND (it1.id in ('3'))
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Adult'))
AND (mi2.info in ('USA:2003','USA:2004','USA:2006'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('writer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (k.keyword IN ('anal-sex','bare-breasts','bare-chested-male','family-relationships','female-nudity','gun','homosexual','independent-film','kidnapping','lesbian','lesbian-sex','marriage','non-fiction','oral-sex','police','sequel','singing','song','suicide','tv-mini-series'))
