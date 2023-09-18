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
AND (mi1.info IN ('Australia:PG','Canada:F','Chile:Y7','Colombia:12','Czech Republic:12','Finland:K-7','France:16','Iran:18+','Malaysia:18SG','Norway:7','Singapore:PG','South Africa:16LV','Spain:X','UK:12','UK:18'))
AND (mi2.info IN ('France:12 May 2005','France:14 May 2004','France:15 May 2003','Germany:8 February 2008','Taiwan:9 November 2012','USA:2003','USA:January 2005','USA:October 2003'))
AND (kt.kind in ('episode','tv movie'))
AND (rt.role in ('actor'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
