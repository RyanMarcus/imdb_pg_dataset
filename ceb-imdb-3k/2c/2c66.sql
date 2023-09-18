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
AND (it1.id in ('7'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:Kinuta Laboratories, Tokyo, Japan','LAB:Movielab, USA','MET:115 m','MET:12.2 m','MET:1800 m','MET:290 m','MET:30 m','MET:45.72 m','PCS:CinemaScope','PCS:Totalscope','RAT:2.20 : 1'))
AND (mi2.info IN ('Biography','Drama','Film-Noir','History','Horror','Music','News','Romance','Western'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.28)','(#1.97)','(#2.4)','(#4.24)','(#5.12)','(#7.14)','(#8.1)','A Star Is Born','Aida','Anniversary','Blood Money','Compact','Die Ratten','Hallo Taxi','Hit and Run','Hollywood Without Make-Up','Home Sweet Home','Jailhouse Rock','Lenny','Little Girl Lost','Night Club','Reunion','Skin Deep','The Big Gamble','The Caddy','The Cats-Paw','The Condemned','The Gun','The Helping Hand','The Innocent','The Legacy','The Mark of Zorro','The Soldier','The Song of Bernadette','The Squaw Man','Under Suspicion','Vendetta'))
