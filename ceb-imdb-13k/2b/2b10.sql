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
AND (mi1.info in ('English','French','German','Portuguese','Spanish'))
AND (mi2.info in ('Barcelona, Cataluña, Spain','Berlin, Germany','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','Canada','Cologne, North Rhine - Westphalia, Germany','Denver, Colorado, USA','France','Lisbon, Portugal','Los Angeles, California, USA','Montréal, Québec, Canada','Nashville, Tennessee, USA','New Jersey, USA','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Portland, Oregon, USA','UK'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('composer','costume designer'))
AND (n.gender in ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (k.keyword IN ('gallaudet-university','ham-and-ex','khan','lighting-pipe','los-lonely-boys','reference-to-united-airlines','rich-boy-poor-girl-relationship','school-auditorium','school-voucher','scorched-summer'))
