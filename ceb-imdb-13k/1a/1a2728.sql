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
AND (it1.id in ('2'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('ABC Television Center - 4151 Prospect Avenue, Los Angeles, California, USA','Burbank, California, USA','Helsinki, Finland','Houston, Texas, USA','Melbourne, Victoria, Australia','Moscow, Russia','New Jersey, USA','North Hollywood, Los Angeles, California, USA','Orlando, Florida, USA','Stage 17, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 25, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Warsaw, Mazowieckie, Poland'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('editor'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
