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
AND (it1.id in ('4'))
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Czech','English','German','Italian','Mandarin','Persian','Portuguese'))
AND (mi2.info IN ('15','6','70','73','96','99'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','director','editor','guest','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.47)','(#1.71)','(#2.7)','(#3.34)','(#5.9)','A Likely Story','After the Thin Man','All Star Comedy Carnival','Blazing Saddles','Caravan','Chain of Events','Decision Before Dawn','For Better, for Worse','Honky Tonk','Like Father, Like Son','Mandrin','Second Chance','The Big Night','The Big Shot','The Gold Rush','The Green Hornet','The Mummy','The Prize'))
