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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('English','Georgian','Italian','Kannada','Malay','Spanish'))
AND (mi2.info in ('Austria','Czech Republic','Germany','Hungary','India','Malaysia','Philippines','Singapore','Soviet Union','Spain','Venezuela','West Germany'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('actor','director'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('bare-chested-male','based-on-novel','dancing','doctor','family-relationships','female-frontal-nudity','friendship','gay','independent-film','interview','lesbian-sex','male-nudity','new-york-city','non-fiction','one-word-title','party','revenge','singing','surrealism'))
