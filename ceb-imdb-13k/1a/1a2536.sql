SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('105'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('$16,000,000','$200,000,000','$22,000,000','$32,000,000','$35,000,000','$7,000,000','$75,000,000','$85,000,000'))
AND (mi2.info IN ('Australia:MA','Canada:18A','Chile:14','Germany:12','Hong Kong:IIA','Iceland:16','Netherlands:AL','New Zealand:R16','Portugal:M/16','Singapore:NC-16','Switzerland:14','USA:Unrated'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('actor','cinematographer','composer','guest'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
