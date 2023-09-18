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
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Nigeria','USA'))
AND (mi2.info in ('Nigeria:2007','USA:1993','USA:1995','USA:1996','USA:1997','USA:1998','USA:1999','USA:2000'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('cinematographer','editor'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('bare-breasts','bare-chested-male','character-name-in-title','father-daughter-relationship','fight','hardcore','interview','lesbian-sex','male-frontal-nudity','mother-son-relationship','new-york-city','number-in-title','one-word-title','sequel','surrealism','tv-mini-series'))
