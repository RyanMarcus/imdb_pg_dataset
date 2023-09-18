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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Arriflex Cameras','CAM:Canon XL-2','CAM:Panaflex Camera and Lenses by Panavision','CAM:Panasonic AG-HVX200','CAM:Panavision Cameras and Lenses','CAM:Red One Camera','LAB:DuArt Film Laboratories Inc., New York, USA','LAB:Technicolor, Hollywood (CA), USA','OFM:Super 16','PCS:Betacam SP','PCS:Digital Betacam','PCS:Redcode RAW','PFM:16 mm','RAT:16:9 HD'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actor','actress','cinematographer','composer','director'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.5460)','(#1.6064)','(#1.6304)','(#12.51)','(#18.20)','(#6.122)','(#6.138)','(#9.67)','(1999-04-14)','(1999-11-09)','(2002-11-29)','(2007-03-15)','(2007-11-12)','1492','A Brady, a Lady, a Kiss and a Flo','A Mighty Heart','A New Life: Part 1','Airheads','Alive and Kicking','Barbara','Black and White','Bruce Almighty','Candy Wars','Celebrity Special','Civilization III: Conquests','Cynthia Nixon','Daylight Savings','Divine Manipulation of the Threads','Drowning','Every Move You Make','Excess Baggage','False Colors','Far and Away','Get Bass','Gino and Kiko Fight Over Mikay','Hijack','Homer Defined','ID','If the Shoe Fits','Man vs. Beast','Off the Track','Retrouvailles','Revenge Is Sweet','San Francisco 49ers vs. Los Angeles Rams','Sospechas','Stomp the Yard','Stuart Little','The Name','The Pearl','Unusual Suspects'))
