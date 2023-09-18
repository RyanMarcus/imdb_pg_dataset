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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:DeLuxe','MET:','MET:15.2 m','MET:1500 m','MET:1800 m','OFM:35 mm','PCS:(anamorphic)','PCS:Shawscope','PCS:Techniscope','RAT:1.36 : 1'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('director','editor','producer','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.91)','(#2.37)','As Pupilas do Senhor Reitor','Countdown','Erster Teil','Nora','Ordeal','Riffraff','Side Street','The Last Man','The Rivals','Too Many Cooks','Up the River','Vierter Teil'))
