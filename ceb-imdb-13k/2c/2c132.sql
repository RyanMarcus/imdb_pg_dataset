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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('France','Poland','Sweden','Switzerland','West Germany'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','Dolby','Mono','Silent'))
AND (kt.kind in ('episode','movie','video game','video movie'))
AND (rt.role in ('actress','cinematographer','composer','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.159)','(#1.190)','(#1.198)','(#1.273)','(#1.341)','(#1.500)','(#1.528)','(#1.588)','(#1.742)','(#1.847)','(#1.853)','(#11.8)','Code of Silence','Danny','Dansk melodi grand prix','Days of Thunder','Divide and Conquer','Don Giovanni','Escolinha do Professor Raimundo','Fear of Flying','Fünfte Folge','Gabriela','Gas','Hansel and Gretel','In Love and War','Nana','Parlez-nous damour','Peter Pan','Power','Raw Deal','Singin in the Rain','Star Trek: The Motion Picture','Such Good Friends','Superman','The Abyss','The Big Fight','The Courier','The Outing','The Razors Edge','The Silver Chalice','Urgh! A Music War','World Wide Wrestling'))
