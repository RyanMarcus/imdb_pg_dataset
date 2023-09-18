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
AND (mi2.info IN ('MET:120 m','MET:15.2 m','MET:15.24 m','MET:150 m','MET:30 m','PFM:68 mm','RAT:1.33 : 1','RAT:1.66 : 1'))
AND (kt.kind in ('episode','movie','tv series','video game'))
AND (rt.role in ('actor','cinematographer','director','writer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.116)','(#1.71)','(#1.93)','(#3.32)','(#6.13)','Airport','Arashi o yobu otoko','Backfire','Brigadoon','Down to the Sea in Ships','If I Were King','Jenny','Kabale und Liebe','Macbeth','Man on the Run','Music Hath Charms','No Escape','Pride and Prejudice','Search for Tomorrow','Svadba','The Arrangement','The Beginning or the End','The Countess','The King of Kings','The Other Man','The Passenger','The Prodigal','The Savage','The Second Time Around','The Substitute','Unser Sandmännchen','Washington Story','Woman to Woman','World Wide Wrestling'))
