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
AND (it1.id in ('4'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('English','German','Spanish'))
AND (mi2.info in ('Argentina:13','Argentina:Atp','Finland:K-12','Finland:K-16','Iceland:L','West Germany:16'))
AND (kt.kind in ('movie','tv movie'))
AND (rt.role in ('producer'))
AND (n.gender in ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('based-on-play','character-name-in-title','cigarette-smoking','dog','female-frontal-nudity','female-nudity','flashback','interview','mother-daughter-relationship','murder','non-fiction','singer','violence'))
