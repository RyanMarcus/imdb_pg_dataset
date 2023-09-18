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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:DeLuxe','LAB:Kinuta Laboratories, Tokyo, Japan','MET:300 m','MET:500 m','OFM:16 mm','PCS:Spherical','PFM:16 mm','RAT:1.37 : 1','RAT:2.20 : 1'))
AND (mi2.info IN ('Finnish','German','Greek','Hindi','Japanese'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','guest'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#2.43)','(#3.4)','(#4.31)','(#5.5)','(#5.8)','(#6.22)','A Family Affair','Ada','April Fool','Chance of a Lifetime','Crack-Up','Die gefrorenen Blitze','Dragnet','Eyewitness News','Hollywood Canteen','Hot Money','Jigsaw','Killer McCoy','Missing','Mission to Moscow','Never Say Goodbye','Oceans Eleven','Suitable for Framing','Tales of Manhattan','The Caddy','The Great Ziegfeld','The Male Animal','The Merry Widow','The Pride of the Yankees','You Cant Cheat an Honest Man','Young Love'))
