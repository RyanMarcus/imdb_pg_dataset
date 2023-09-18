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
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:Atp','Canada:18+','New Zealand:(Banned)','Spain:12','Sweden:18','UK:R18','USA:TV-G'))
AND (mi2.info IN ('Brazil:23 October 2009','France:12 May 2005','France:13 May 2004','France:17 May 2007','Peru:1989','USA:October 2007'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('actress','costume designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
