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
AND (mi1.info IN ('Arabic','English','German','Italian','Japanese','Latin','Mandarin','Spanish'))
AND (mi2.info IN ('Argentina:Atp','Australia:M','Australia:PG','Finland:(Banned)','Finland:K-16','Finland:K-18','Iceland:16','Iceland:L','Netherlands:18','Netherlands:AL','UK:15','USA:R','West Germany:12','West Germany:16'))
AND (kt.kind in ('episode','movie','tv movie','video movie'))
AND (rt.role in ('cinematographer','miscellaneous crew','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.83)','(#2.8)','(#8.1)','A Dispatch from Reuters','A Piece of the Action','Captain America','Cleopatra','Die große Chance','Janie','Mr. Deeds Goes to Town','Mr. Smith Goes to Washington','Out of the Past','SOS Coast Guard','Show Me the Way to Go Home','Slightly Dangerous','The Gift','The Godfather: Part II','The Miracle of the Bells','The Perils of Pauline','The Rebel','The Spiders Web','The Ugly Duckling','This Is the Army','Week-End at the Waldorf','Woman to Woman'))
