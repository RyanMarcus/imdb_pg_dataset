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
AND (it1.id in ('6'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('70 mm 6-Track','DTS-ES','DTS-Stereo','Dolby Digital EX','Dolby Digital','Dolby SR','Dolby Stereo','Dolby','Mono','SDDS','Sonics-DDP','Stereo','Ultra Stereo'))
AND (mi2.info IN ('Argentina:18','Brazil:16','Canada:18A','Chile:14','Finland:K-13','Hong Kong:IIA','Italy:VM14','Portugal:M/6','Spain:18','UK:18','UK:U','USA:PG','USA:TV-14'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.2741)','(#1.3469)','(#2.42)','(#9.26)','(2000-07-27)','(2003-06-19)','(2005-04-06)','(2007-03-11)','(2007-06-08)','10,000 BC','A Simple Twist of Fate','Animus','Atomic Train','Judgment Day','Last Rites','Lets Do It','Live Show 2','Live Surprise','Seems Like Old Times','Shopping','The Final Two Perform','Waynes World'))
