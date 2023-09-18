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
AND (it2.id in ('17'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('English','German','Hindi','Italian','Japanese','Latin','Polish','Portuguese','Spanish'))
AND (mi2.info IN ('Last show of the series.','One of over 700 Paramount Productions, filmed between 1929 and 1949, which were sold to MCA/Universal in 1958 for television distribution, and have been owned and controlled by Universal ever since.'))
AND (kt.kind in ('movie','tv series','video game','video movie'))
AND (rt.role in ('actress','composer','costume designer','production designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.47)','(#4.26)','Cinderella','Fools Gold','Going Home','Ill Fix It','Law and Disorder','Shakedown','The Box','The Gangs All Here','The Scarlet Pimpernel','The Shepherd of the Hills','You and Me'))
