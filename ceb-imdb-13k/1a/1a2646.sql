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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('15001 Calvert Street, Van Nuys, Los Angeles, California, USA','British Columbia, Canada','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','France','Germany','Hamburg, Germany','Montréal, Québec, Canada','New York City, New York, USA','New York, USA','Santa Clarita, California, USA','Shepperton Studios, Shepperton, Surrey, England, UK','Stage 25, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Sydney, New South Wales, Australia'))
AND (mi2.info IN ('70 mm 6-Track','DTS','DTS-Stereo','Dolby Digital EX','Dolby Digital','Dolby','Ultra Stereo'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('costume designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
