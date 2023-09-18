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
AND (it1.id in ('1'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('102','106','107','13','57','58','62','64','71','75','78','84','91'))
AND (mi2.info IN ('Czech','Danish','Dutch','English','Finnish','Hungarian','Mandarin','Polish','Russian','Serbo-Croatian','Swedish','Turkish'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','cinematographer','costume designer','editor','miscellaneous crew'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#2.13)','(#3.22)','(#4.21)','(#8.2)','Anniversary','Black Jack','Casanova Brown','Clive of India','Conspiracy of Silence','Ebb Tide','Election 74','Game 4','Gilda','Happy Landing','Impasse','Its a Dogs Life','Jeanne Eagels','Jenny','Monsieur Beaucaire','No Place to Hide','Playmates','Stage Door','The Big Night','The Gold Rush','The Morning After','The Phantom Rider','The Pigeon','Ziemia obiecana'))
