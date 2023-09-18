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
AND (it1.id in ('8'))
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Austria','Canada','Czechoslovakia','Finland','France','Germany','Greece','Hungary','Japan','Netherlands','Portugal','Sweden'))
AND (mi2.info IN ('10','30','7','8','86','89','9','90','95','96'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','cinematographer','composer','editor','writer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.107)','(#2.13)','(#4.15)','(#4.6)','(#4.9)','(#6.21)','Aoi sanmyaku','Crime et châtiment','Dick Tracy','Die Fledermaus','Dirty Harry','Double Exposure','Easy Come, Easy Go','End of the Road','Finders Keepers','Gabriela','Gilda','König Drosselbart','Letter of the Law','Mardi Gras','Quarantine','Reap the Wild Wind','Riffraff','She Gets Her Man','Start Cheering','The Bargain Hunt','The Box','The Debt','The Fighting Devil Dogs','The Fugitives','The Importance of Being Earnest','The Iron Major','The Kid','The Kidnapping','The Life of the Party','The Paleface','The Perils of Pauline','The Phantom Rider','The Professionals','The Reckoning','The Texas Rangers','The Toast of New York','The Verdict','The Visitor','The Women','Waterloo','Wing and a Prayer'))
