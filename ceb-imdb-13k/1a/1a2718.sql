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
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:Atp','Canada:13+','Canada:R','Finland:K-8','Germany:12','Iceland:L','Netherlands:12','Spain:T','Sweden:15','UK:U','USA:Approved','USA:PG','USA:TV-PG'))
AND (mi2.info IN ('101','105','108','60','67','69','77','79','8','82','88','89','93','Argentina:30','USA:7'))
AND (kt.kind in ('episode','tv series'))
AND (rt.role in ('actor','costume designer','director','production designer','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
