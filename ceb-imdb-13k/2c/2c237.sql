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
AND (it1.id in ('2'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('CAM:Arri Alexa','CAM:Arriflex Cameras and Lenses','LAB:Boyana Film Laboratory, Sofia, Bulgaria','OFM:16 mm','OFM:35 mm','OFM:Redcode RAW','PCS:(anamorphic)','PCS:Betacam SP','PCS:CinemaScope','PCS:Redcode RAW','PCS:Shawscope','PFM:16 mm','RAT:1.66 : 1','RAT:1.78 : 1 / (anamorphic)','RAT:1.78 : 1'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.3744)','(#1.4885)','(#1.934)','(#1.942)','(#15.94)','(#17.25)','(#2.253)','(#2.84)','(1997-04-29)','(2000-03-29)','(2000-10-10)','(2002-12-26)','(2003-12-07)','(2006-08-12)','(2007-02-28)','(2010-04-14)','(2013-04-30)','40 Days and 40 Nights','Allen','Allure','Anamorph','Canción de cuna','Carne de neón','Der Doppelgänger','Dont Hate the Player','Flypaper','Follow the Leader','Grad Night','Home Away from Home','Its Not Yet Over for Gino, So He Packs His Bag for Yangdon','Meet Market','Nighthawks','Pandoras Box','Piranha 3DD','Salad Days','The Brothers','The Brown Family','The Lawyer','The Lost Weekend','Three Kings','Underworld','Wouldnt It Be Nice'))
