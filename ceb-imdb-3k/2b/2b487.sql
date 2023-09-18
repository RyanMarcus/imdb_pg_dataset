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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('China','Egypt','Hong Kong','India','Philippines','Serbia','South Africa','Spain','Switzerland','USA','Venezuela'))
AND (mi2.info in ('Arabic','English','Galician','Italian','Japanese','Mandarin','None','Serbian','Spanish','Swiss German','Tamil'))
AND (kt.kind in ('movie','video movie'))
AND (rt.role in ('producer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (k.keyword IN ('character-name-in-title','father-daughter-relationship','flashback','friendship','independent-film','mother-daughter-relationship','murder','new-york-city','number-in-title','police','sequel','singing','suicide'))
