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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Australia:M','Finland:K-18','Germany:12','Germany:18','Iceland:12','Iceland:L','Netherlands:6','Norway:15','Spain:T','Sweden:11','Sweden:Btl','UK:12'))
AND (mi2.info in ('English','German'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('miscellaneous crew','producer'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('cigarette-smoking','death','father-son-relationship','female-nudity','flashback','gay','gun','kidnapping','lesbian','male-nudity','mother-daughter-relationship','murder','new-york-city','nudity','number-in-title','one-word-title','oral-sex','sequel','singing','violence'))
