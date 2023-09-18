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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','6-Track Stereo','70 mm 6-Track','DTS-ES','DTS-Stereo','Datasat','Dolby Stereo','Dolby','SDDS','Silent','Stereo','Ultra Stereo'))
AND (mi2.info IN ('CAM:Arriflex Cameras and Lenses','CAM:Panavision Panaflex Platinum, Panavision Primo Lenses','LAB:DeLuxe','LAB:DeLuxe, Hollywood (CA), USA','LAB:DeLuxe, USA','LAB:FotoKem Laboratory, Burbank (CA), USA','OFM:16 mm','PCS:Digital','PCS:Panavision','PCS:Super 16','PFM:16 mm','PFM:DVD-ROM','PFM:Digital','RAT:1.37 : 1','RAT:1.85 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('cinematographer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.1671)','(#1.3711)','(#1.5630)','(#1.6267)','(#10.55)','(#2.225)','(#2.50)','(#4.3)','(#5.195)','(#9.75)','(2003-10-10)','(2006-03-04)','(2006-11-20)','(2007-05-03)','(2007-10-04)','(2009-03-19)','(2009-09-02)','(2011-01-22)','11th Annual Screen Actors Guild Awards','Altlasten','An Owl in a Thornbush','Austin Powers in Goldmember','Conspiracy','Detox','Disco Fever','Fata Morgana','Freunde','Happy End','Homeward Bound II: Lost in San Francisco','Inkasso','Jailed in Katrina, Bhutan Motorcycle Crash, Kings Canyon Rescue','Just for the Record','Mauvaise fille','Nothing Lasts Forever','Portraits','Ray','Secrets in the Snow','Slash Fiction','Switch','Sûpâ no onna','The American Way','The Storm','Till My Heartaches End','Time Out of Mind','Turbulence'))
