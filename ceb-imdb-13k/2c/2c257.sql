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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Afrikaans','Czech','German','Japanese','Serbian','Swiss German','Thai'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','director','editor','miscellaneous crew','producer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#16.59)','(1995-11-18)','(2006-04-08)','(2007-12-24)','(2009-11-10)','Bakit di totohanin','Bee Movie','Death Goes On','Final Episode','Gordy','Kiss and Tell','Kitumba','La reine et le cardinal','My Son, My Son, What Have Ye Done','Original Sin','Skin and Bone','The Perfect Family'))
