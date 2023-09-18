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
AND (mi1.info in ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Cologne, North Rhine - Westphalia, Germany','Houston, Texas, USA','Japan','Long Beach, California, USA','Moscow, Russia','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Portland, Oregon, USA','Warsaw, Mazowieckie, Poland'))
AND (mi2.info in ('Black and White','Color'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('director'))
AND (n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('bare-breasts','homosexual','male-frontal-nudity','murder','oral-sex','party'))
