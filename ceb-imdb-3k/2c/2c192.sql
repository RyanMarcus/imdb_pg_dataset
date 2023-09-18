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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','Silent','Stereo'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('movie','tv movie','video game','video movie'))
AND (rt.role in ('cinematographer','composer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#3.15)','(#3.35)','(#3.42)','(#7.2)','Artists and Models','Carrie','Checkmate','Du Barry Was a Lady','Familie Benthin','Giuseppe Verdi','La dolce vita','Lili','Mr. Deeds Goes to Town','Mr. Skeffington','Notorious','Reunion','Runaway','The Bohemian Girl','The Clock','The Gangs All Here','The Heiress','The Set-Up','With a Song in My Heart'))
