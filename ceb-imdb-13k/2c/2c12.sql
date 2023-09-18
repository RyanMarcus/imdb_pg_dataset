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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Dolby Digital','Dolby SR','Dolby','Mono'))
AND (mi2.info IN ('Comedy','Crime','Drama','Family','Musical','Sci-Fi','Thriller','Western'))
AND (kt.kind in ('episode','movie','tv series','video game'))
AND (rt.role in ('actor','director'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.279)','(#1.34)','(#1.376)','(#1.597)','(#1.600)','(#1.767)','(#1.942)','(#7.14)','Assault','Bait','Basket Case','Big Daddy','Childhoods End','Climax','Cry-Baby','Faces','Future-Kill','Hook, Line and Sinker','I Do, I Do','Inferno','Its Your Move','Night Patrol','Please Believe Me','Superman II','The Bracelet','Tug of War','Working Girl','Zhizn Klima Samgina'))
