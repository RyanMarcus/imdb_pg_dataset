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
AND (it1.id in ('2'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Color'))
AND (mi2.info in ('Australia','Detroit, Michigan, USA','Germany','Helsinki, Finland','Metromedia Square - 5746 W. Sunset Blvd., Hollywood, Los Angeles, California, USA','Minneapolis, Minnesota, USA','Mumbai, Maharashtra, India','Nashville, Tennessee, USA','Orlando, Florida, USA','Pittsburgh, Pennsylvania, USA','Santa Monica, California, USA','Stage 10, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Stage 9, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Warsaw, Mazowieckie, Poland'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('director'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
