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
AND (it1.id in ('18'))
AND (it2.id in ('16'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Bradbury Building - 304 S. Broadway, Downtown, Los Angeles, California, USA','Brooklyn, New York City, New York, USA','China','Malibu, California, USA','Matera, Basilicata, Italy','New Westminster, British Columbia, Canada','Oahu, Hawaii, USA','Panama City, Panama','Philadelphia, Pennsylvania, USA','Providence, Rhode Island, USA','Sydney, New South Wales, Australia','Tribeca, Manhattan, New York City, New York, USA','Universal Studios Florida, Universal Orlando Resort - 1000 Universal Studios Plaza, Orlando, Florida, USA'))
AND (mi2.info IN ('Australia:14 October 2004','Canada:27 September 2005','France:16 November 2004','Hungary:10 April 2004','Norway:11 May 2004','Philippines:30 May 2003','Portugal:10 October 2005','USA:2003','USA:2007','USA:2008','USA:2009','USA:2011','USA:2014'))
AND (kt.kind in ('movie','tv movie','tv series','video game'))
AND (rt.role in ('cinematographer','guest'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
