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
AND (it1.id in ('4'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Arabic','Croatian','Georgian','German','Hebrew','Italian','Mandarin','Oriya','Swiss German','Tamil','Thai'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('director'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.27)','(#1.6308)','(#16.15)','(#3.0)','(#5.175)','(#5.74)','(#8.56)','(2000-04-24)','(2004-11-02)','(2008-04-03)','(2009-11-16)','(2011-07-12)','(2011-12-03)','(2012-01-24)','...And a Yacht','A Line in the Sand','Abomination','Automatic for the People','Before the Rain','Critical Mass','Dead Wood','House of D','In Good Company','Jekyll & Hyde: The Musical','Lamour fou','Mortal Kombat','Rain Man','Running the Show','Skin','The End of the Innocence','The Peacemaker','The Sentinel','To Grandmothers House We Go','Todesengel','Xica da Silva','Zombie Brigade'))
