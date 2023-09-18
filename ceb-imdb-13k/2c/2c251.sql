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
AND (it2.id in ('105'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('DTS','Dolby Digital','Dolby SR','Dolby','Mono','SDDS','Stereo'))
AND (mi2.info IN ('$1,000','$15,000','$20,000','$30,000','$5,000'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','actress','cinematographer','guest'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.261)','(#1.450)','(#17.42)','(2000-02-08)','(2001-10-26)','(2002-01-22)','(2004-08-12)','(2004-09-04)','(2007-02-02)','(2009-05-19)','(2009-09-20)','(2009-12-05)','(2011-09-06)','Animal Control','BCN aixeca el teló','Bad Boy','Bon voyage','Capitulo 62','Chiquititas Brasil','Dark Waters','Fair Trade','Nanny McPhee','Os','The Clearing','The First Fagin','The Little Things','The Perfect Family','The Preachers Wife','The Turning Point','Trapped on a Ledge','Trigger','Weapons of Mass Distraction','Whats Eating Gilbert Grape'))
