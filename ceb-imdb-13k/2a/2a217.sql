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
AND (mi1.info in ('English','French','Italian'))
AND (mi2.info in ('ABC Television Center - 4151 Prospect Avenue, Los Angeles, California, USA','Hollywood, Los Angeles, California, USA','Paris, France','Rome, Lazio, Italy','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','San Francisco, California, USA','Stage 17, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 3, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Studio 8H, NBC Studios - 30 Rockefeller Plaza, Manhattan, New York City, New York, USA'))
AND (kt.kind in ('tv series','video game','video movie'))
AND (rt.role in ('cinematographer'))
AND (n.gender in ('m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
