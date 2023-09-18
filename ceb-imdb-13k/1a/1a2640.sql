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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Berlin, Germany','Buenos Aires, Federal District, Argentina','CBS Studio 50, New York City, New York, USA','Chicago, Illinois, USA','Corriganville, Ray Corrigan Ranch, Simi Valley, California, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Hal Roach Studios - 8822 Washington Blvd., Culver City, California, USA','Hollywood, Los Angeles, California, USA','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','New York City, New York, USA','Philippines','Prague, Czech Republic','Vienna, Austria'))
AND (mi2.info IN ('Austria','Canada','India','Poland','Spain','UK'))
AND (kt.kind in ('episode','movie','tv movie','video movie'))
AND (rt.role in ('actress','editor','producer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
