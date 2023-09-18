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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('42','45','68','Canada:5','Canada:90','Germany:42','Germany:46','Japan:30','Mexico:90','USA:35','USA:52','USA:78','USA:89'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','producer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.3002)','(#1.705)','(#3.38)','(#8.4)','(1998-02-26)','(2001-06-20)','(2008-12-16)','(2012-05-03)','(500) Days of Summer','Audition Day','Close to Home','Dangerous Curves','Danish Music Awards 2003','Das Geschenk','Double Impact','Expect No Mercy','Far','High Rollers','In Another Life','Just Looking','Lets Start from the Beginning','Maximum Risk','Prelude','Reunion Show','Terrible Twos','The 54th Annual Golden Globe Awards','Touch & Go','Touch','Un altro mondo è possibile','Valley Girls','Zero Tolerance'))
