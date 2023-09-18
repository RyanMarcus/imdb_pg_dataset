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
AND (it1.id in ('3'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Adventure','Animation','History','Horror','Romance','Western'))
AND (mi2.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','MET:130 m','MET:1500 m','MET:180 m','MET:225 m','MET:900 m','OFM:16 mm','PCS:Shawscope','PFM:35 mm','PFM:70 mm','RAT:1.36 : 1','RAT:1.66 : 1','RAT:1.85 : 1'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('actor'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.43)','(#4.14)','(#4.24)','A Midsummer Nights Dream','Aoi sanmyaku','Bad Boy','Bedtime Story','Dr. Jekyll and Mr. Hyde','Driftwood','Love Story','Meet Me in St. Louis','Roger la Honte','The Inheritance','The Inside Man'))
