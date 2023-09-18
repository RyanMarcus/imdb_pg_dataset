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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','Dolby Digital','Mono','Silent'))
AND (mi2.info IN ('Australia:G','Finland:K-16','Iceland:16','Iceland:L','India:U','Spain:T','Sweden:15','USA:G','USA:TV-G','USA:Unrated','USA:X','West Germany:18'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('editor','guest','producer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.1)','(#1.101)','(#1.113)','(#1.95)','(#3.34)','(#5.29)','(#6.13)','Ambush','Borderline','Charleys Tante','Citizen Kane','Dick Tracy Returns','Die gefrorenen Blitze','Dirty Harry','Emergency','Gunfight at the O.K. Corral','Iron Man','Meet the People','My Fair Lady','O Lucky Man!','Rebellion','Rocambole','Sesame Street','The Big Noise','The Genius','The Letter','The Magic Box','The Show-Off','Vice Versa'))
