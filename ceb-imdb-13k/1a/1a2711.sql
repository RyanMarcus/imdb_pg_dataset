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
AND (mi1.info IN ('Australia:M','Canada:G','Finland:K-12','Finland:K-13','Ireland:16','New Zealand:R13','Philippines:G','Philippines:PG-13','Portugal:M/16','Sweden:11'))
AND (mi2.info IN ('105','128','135','88','Argentina:95','USA:22','USA:82','USA:87'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','director','production designer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
