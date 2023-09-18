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
AND (it1.id in ('18'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Barcelona, Cataluña, Spain','Berlin, Germany','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','Hawaii, USA','Lisbon, Portugal','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Montréal, Québec, Canada','Sydney, New South Wales, Australia','Vienna, Austria'))
AND (mi2.info IN ('Belgium','Brazil','Canada','Poland','West Germany'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','editor','guest','producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#10.3)','(#11.2)','(#8.23)','Alice','Assault','Christmas Story','Devils Canyon','Don Giovanni','From Here to Maternity','I Spy','Joulukalenteri','Los Angeles Rams vs. Atlanta Falcons','Lucifer','Masquerade','Quarterback Sneak','Shag','The Amateur','The Devil You Know','The Move'))
