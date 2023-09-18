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
AND (mi2.info IN ('CAM:Arriflex Cameras','LAB:DeLuxe','PCS:DV','PCS:Digital Intermediate','PFM:35 mm','RAT:1.66 : 1','RAT:1.78 : 1 / (high definition)','RAT:1.78 : 1','RAT:1.85 : 1','RAT:16:9 HD'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('cinematographer','costume designer','director','production designer','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.4119)','(#1.5596)','(#1.578)','(#12.19)','(#2.120)','(#5.58)','(1999-10-11)','(2005-03-16)','(2006-04-05)','(2009-11-22)','A Knight to Remember','Aint No Sunshine','And Then There Was One','Auf Messers Schneide','Breaking the Waves','Burning Love','Escape','How She Move','Im Supposed to Be Indebted to Her for the Rest of the Race?!','Iskrenie','Iwo Jima','Jon Meacham','Last Supper','Live Results Show #5','Love Me Again (Land Down Under)','Next of Kin','The Imaginarium of Doctor Parnassus','The Kindred','Top of the Cops','Undercurrent','What About Bob?','What the #$*! Do We (K)now!?','Will'))
