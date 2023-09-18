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
AND (mi1.info in ('Australia','Canada','Mexico','UK','USA'))
AND (mi2.info in ('Chicago, Illinois, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','London, England, UK','Mexico City, Distrito Federal, Mexico','Miami, Florida, USA','New Orleans, Louisiana, USA','Philadelphia, Pennsylvania, USA','Seattle, Washington, USA','Sydney, New South Wales, Australia','Vancouver, British Columbia, Canada'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('actress','writer'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
