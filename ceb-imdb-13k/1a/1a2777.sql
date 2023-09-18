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
AND (it1.id in ('4'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Cantonese','Czech','English','German','Irish Gaelic','Italian','Latin','Malayalam','Romanian','Spanish','Swahili','Tagalog','Yiddish'))
AND (mi2.info IN ('Argentina:Unrated','Canada:18+','Finland:K-11','Germany:12','Germany:o.Al.','Hong Kong:I','Italy:VM14','Netherlands:18','Peru:PT','Philippines:R-13','Singapore:M18','Spain:7','UK:15','USA:Approved','USA:TV-Y7'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('actor','actress','cinematographer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
