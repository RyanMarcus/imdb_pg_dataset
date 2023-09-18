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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('DTS','Dolby SR','Dolby','Mono','Ultra Stereo'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','composer','costume designer','guest','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.3662)','(#1.601)','(#22.12)','(#5.139)','(2001-03-18)','(2001-04-14)','(2005-06-18)','(2007-03-07)','(2008-08-04)','(2010-05-03)','(2012-06-12)','After Sex','Bad Girl','Bala at lipistik','Boricua','Comedy Central Roast of Roseanne','Conversion','Die Wahrheit','Dirty Little Secrets','Double Trouble with Guest Housemates David and Anthony','Down the Rabbit Hole','Gia','Hanyo','His & Hers','I Never Looked So Foolish in My Whole Entire Life: Outback','La vendedora de rosas','Leaving Normal','Marci X','Meet the Robinsons','Never Been Kissed','Princess','Rabbids Go Home','Round 10','Suck It','The 63rd Primetime Emmy Awards','The Disappearance of Garcia Lorca','The Kidney Stays in the Picture','The Stand-In','There Is No Place Like Home','Thunder in Paradise','Yours, Mine and Ours'))
