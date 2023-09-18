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
AND (mi2.info IN ('CAM:Canon 7D','CAM:Canon XL-1','OFM:16 mm','OFM:8 mm','PCS:(anamorphic)','PCS:Spherical','PCS:Super 16','RAT:1.33 : 1'))
AND (kt.kind in ('movie','tv series','video movie'))
AND (rt.role in ('cinematographer','editor','guest','production designer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.1223)','(#17.65)','(#2.20)','(#3.141)','(1998-04-24)','(2000-11-29)','(2002-01-19)','(2005-04-27)','(2011-01-30)','(2012-01-04)','(2012-10-18)','A Cock and Bull Story','Ah, Wilderness','Bonanno: A Godfathers Story','Cinco de Mayo','Francesco','Lisa','Never Again','One Wrong Move','Perfect Strangers','Pig','Sacred','Tekken 5','The 54th Annual Academy Awards','The Christmas Tree','The Swap','The Warriors','Upstaged'))
