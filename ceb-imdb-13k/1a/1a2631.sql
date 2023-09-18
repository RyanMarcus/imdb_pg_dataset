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
AND (it1.id in ('16'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Canada:11 September 2004','France:17 May 2007','Germany:10 February 2007','Iceland:8 April 2005','USA:16 April 2010','USA:2008','USA:28 October 2005','USA:April 2008'))
AND (mi2.info IN ('Argentina:16','Brazil:16','Canada:13+','Canada:14+','Canada:A','Canada:F','Iceland:L','Italy:VM14','Netherlands:12','Portugal:M/6','South Africa:13V','South Korea:All','Sweden:Btl','Taiwan:R-12','UK:PG'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('actor','director','editor','guest','producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
