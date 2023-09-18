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
AND (mi1.info in ('Australia:M','Canada:G','Finland:K-12','Iceland:16','India:U','UK:18','UK:PG','UK:X','USA:G','USA:PG','USA:Passed','USA:Unrated','USA:X'))
AND (mi2.info in ('Black and White','Color'))
AND (kt.kind in ('tv series','video movie'))
AND (rt.role in ('cinematographer','production designer'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('anal-sex','bare-chested-male','blood','character-name-in-title','cigarette-smoking','female-nudity','fight','friendship','gun','hospital','interview','love','male-frontal-nudity','mother-daughter-relationship','new-york-city','non-fiction','one-word-title','revenge','violence'))
