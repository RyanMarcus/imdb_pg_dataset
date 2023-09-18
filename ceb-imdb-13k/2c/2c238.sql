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
AND (it1.id in ('2'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Bulgaria','Croatia','Cuba','Denmark','Germany','Greece','Hong Kong','Iran','Portugal','Thailand'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actress','cinematographer','composer','producer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.132)','(#1.3383)','(#1.3633)','(#1.775)','(#17.36)','(#19.15)','(#7.166)','(2000-10-19)','(2002-06-18)','(2003-12-04)','(2008-07-27)','(2013-05-01)','A Brady, a Lady, a Kiss and a Flo','All My Children','BET Awards 2009','Brendan Fraser','Burning Palms','Die Falle','Elephant in the Room','Final Countdown','I Want Candy','Love in Bloom','Major League II','Neubeginn','One More for the Road','Seth McFarlane & Norah Jones','Shallow Water, Oh Mama','The Dark Knight','The Manson Family','Weight Loss'))
