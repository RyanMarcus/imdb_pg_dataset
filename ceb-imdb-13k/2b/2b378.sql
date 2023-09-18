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
AND (it1.id in ('8'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Australia','Canada','France','Mexico','Spain','UK','USA'))
AND (mi2.info in ('Boston, Massachusetts, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Las Vegas, Nevada, USA','London, England, UK','Madrid, Spain','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Mexico City, Distrito Federal, Mexico','Paris, France','Stage 9, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Sydney, New South Wales, Australia','Toronto, Ontario, Canada','USA','Vancouver, British Columbia, Canada'))
AND (kt.kind in ('tv movie','tv series'))
AND (rt.role in ('cinematographer','production designer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('burial','ground-penetrating-radar','lava-stream','mystery-rider','pure-grain-alcohol','relaxation-tape','showagon','terran'))
