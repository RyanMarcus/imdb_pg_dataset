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
AND (it1.id in ('18'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Portland, Oregon, USA','Stage 17, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','UK'))
AND (mi2.info in ('English'))
AND (kt.kind in ('tv series','video game'))
AND (rt.role in ('actor','cinematographer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('based-on-novel','based-on-play','dancing','death','doctor','dog','father-son-relationship','female-frontal-nudity','female-nudity','fight','lesbian','mother-son-relationship','murder','new-york-city','sequel','singer','singing','song'))
