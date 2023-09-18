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
AND (it1.id in ('5'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:16','Australia:G','Australia:M','Portugal:M/12','Spain:13','Sweden:15','UK:A','USA:Approved','USA:Unrated'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv series','video game'))
AND (rt.role in ('actress','composer','costume designer','director','miscellaneous crew'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.72)','(#3.16)','(#7.2)','Bedtime Story','Friendly Persuasion','Jugovizija','Letter of Introduction','Rio Rita','The Crowd Roars','Time Lock'))
