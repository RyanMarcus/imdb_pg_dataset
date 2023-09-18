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
AND (it1.id in ('1'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('113','115','121','123','125','130','75','83','99','USA:102','USA:85','USA:86','USA:88','USA:98'))
AND (mi2.info IN ('Australia:R','Germany:12','Norway:16','Portugal:M/18','UK:PG','USA:G','USA:Passed','West Germany:6'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.152)','(#1.338)','(#1.375)','(#1.837)','(#1.962)','(#11.7)','(#3.6)','(#4.35)','Alien Nation','Amadeus','Arena','Arrivederci Roma','Astonished','Blind Spot','Carrie','For Love or Money','Friends and Enemies','Full House','Generations','Happy Birthday','Head Over Heels','Les guignols de linfo','Los Angeles Rams vs. New Orleans Saints','Moving Targets','One More Time','Saturday Night','Sunset','Sweet Lorraine','Taken for a Ride','Thats Entertainment!','The 35th Annual Emmy Awards','The Bargain','The Best Little Whorehouse in Texas','The Hero','The Legacy','The Muppets: A Celebration of 30 Years','The Prisoner of Zenda','The Rose','The Scavengers','The Threat'))
