SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n,
movie_keyword as mk,
keyword as k
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('4'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('English','Spanish'))
AND (mi2.info in ('Buenos Aires, Federal District, Argentina','CBS Studio 50, New York City, New York, USA','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','Los Angeles, California, USA','Madrid, Spain','Mexico City, Distrito Federal, Mexico','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','Stage 3, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Stage 9, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('actress','cinematographer'))
AND (n.gender in ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
