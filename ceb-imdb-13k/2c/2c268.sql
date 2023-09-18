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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Boston, Massachusetts, USA','Buenos Aires, Federal District, Argentina','Cologne, North Rhine - Westphalia, Germany','Dallas, Texas, USA','Germany','India','Los Angeles, California, USA','Madrid, Spain','Malibu, California, USA','Montréal, Québec, Canada','New York City, New York, USA','Portland, Oregon, USA','San Diego, California, USA','San Francisco, California, USA','Stage 25, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA'))
AND (mi2.info IN ('70 mm 6-Track','DTS-Stereo','Datasat','Dolby Digital EX','Dolby','Mono','Stereo'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('actor','actress','composer','editor','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.772)','(#11.26)','(#5.105)','(#5.188)','(2001-03-02)','(2001-03-25)','(2007-05-21)','(2008-05-27)','A Family Affair','Caravaggio','Cherry Blossoms','Choice','Conundrum','Dogs Life','Edward Scissorhands','Everybody Says Im Fine!','Forever Hold Your Peace','From Here to Maternity','Hip Hop','Hope','I Feel Like Im in the Circus (Bangkok, Thailand)','Kahlschlag','Karma','LaToya Jackson','Lallée du roi','Live Season Finale, Part 1 of 2','Midseason Mayhem','Neuland','Prostitution','Raid','Rewind','Shes Gotta Have It','Some Enchanted Evening','Sons and Daughters','The 69th Annual Golden Globe Awards','The Pilot','To Your Health'))
