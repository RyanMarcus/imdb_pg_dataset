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
AND (mi1.info in ('Baltimore, Maryland, USA','Budapest, Hungary','Burbank, California, USA','Cologne, North Rhine - Westphalia, Germany','Florida, USA','New Jersey, USA','Orlando, Florida, USA','Spain','Stage 10, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Stage 25, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Vienna, Austria','Winnipeg, Manitoba, Canada'))
AND (mi2.info in ('Color'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('cinematographer','production designer'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('anal-sex','based-on-play','doctor','dog','father-son-relationship','female-nudity','husband-wife-relationship','interview','jealousy','lesbian-sex','love','marriage','murder','nudity','sequel','surrealism','tv-mini-series','violence'))
