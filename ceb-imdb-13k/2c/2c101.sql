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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:16','Australia:G','Canada:14A','Canada:G','Canada:R','Finland:K-18','India:U','Netherlands:12','Portugal:M/16','Spain:18','UK:AA','USA:Not Rated'))
AND (mi2.info IN ('Danish','English','Finnish','French','German','Hindi','Italian','Japanese','Latin','Malayalam','Portuguese','Swedish'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('producer','writer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.11)','(#1.755)','(#1.890)','Beyond Reasonable Doubt','Cant Stop the Music','Catspaw','Coming to America','Convicted','Fallen Idol','Fathers and Music','Initiation','Little Girl Lost','Loose Screws','Secrets','Sins of the Fathers','The Babysitter','The Big Sleep','The Cotton Club','The End of the World','The Inside Man','The Pretender','The Talk Show','The Young and the Restless','Urgh! A Music War','Utilities','Whats in a Name?','Wish You Were Here','Working Girls'))
