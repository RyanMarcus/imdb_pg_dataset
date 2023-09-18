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
AND (it1.id in ('7'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Arricam LT','LAB:Fotofilm S.A., Madrid, Spain','LAB:Rank Film Laboratories, Denham, UK','LAB:Technicolor, London, UK','PCS:Digital Intermediate','RAT:4:3'))
AND (mi2.info IN ('Argentina','Brazil','Chile','Denmark','Ireland','Japan','Luxembourg','Netherlands','Singapore','Slovenia','Thailand','USA'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actress','composer','editor','miscellaneous crew','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.768)','(2006-10-28)','Coup de théâtre','Face-Off','Felix','Harvest','Indiana Jones and the Kingdom of the Crystal Skull','Marina','Mirrors','One Man Band','Sesshoku','Shattered Image','Street Gun','The British Invasion','The Missing Piece','The Zone'))
