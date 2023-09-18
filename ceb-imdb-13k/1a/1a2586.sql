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
AND (it1.id in ('5'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:Unrated','Australia:M','Brazil:16','Brazil:Livre','Canada:PG','Finland:(Banned)','Finland:K-13','Iceland:12','Ireland:G','Ireland:PG','Japan:Unrated','Philippines:R-18','Singapore:(Banned)','Singapore:G','USA:X'))
AND (mi2.info IN ('Alabama Hills, Lone Pine, California, USA','Corriganville, Ray Corrigan Ranch, Simi Valley, California, USA','Germany','New York Street, Backlot, Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Park Avenue, Manhattan, New York City, New York, USA','Spain','Van Nuys, Los Angeles, California, USA'))
AND (kt.kind in ('episode','tv movie','tv series'))
AND (rt.role in ('actress','guest','producer','production designer','writer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
