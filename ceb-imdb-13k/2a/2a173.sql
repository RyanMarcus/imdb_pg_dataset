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
AND (it1.id in ('18'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','ABC Television Center - 4151 Prospect Avenue, Los Angeles, California, USA','CBS Studio 50, New York City, New York, USA','CBS Television City - 7800 Beverly Blvd., Fairfax, Los Angeles, California, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','London, England, UK','Metromedia Square - 5746 W. Sunset Blvd., Hollywood, Los Angeles, California, USA','Mexico City, Distrito Federal, Mexico','Mexico','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Paris, France','Rome, Lazio, Italy','San Francisco, California, USA'))
AND (mi2.info in ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('director','miscellaneous crew'))
AND (n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
