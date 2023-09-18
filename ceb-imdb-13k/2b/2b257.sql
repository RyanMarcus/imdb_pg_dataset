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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Australia','Belgium','Canada','India','Israel','Italy','New Zealand','Philippines','Poland','South Korea','Sweden','UK','USA'))
AND (mi2.info in ('English','French','Hebrew','Korean','Malayalam','Polish','Swedish','Tagalog'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('composer','production designer'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('bathing-in-cream','burning-a-shirt','del-taco-restaurant','dragon-ball-z','hakkari-turkey','irrational-exuberance','killing-an-animal','lyster-bag','movie-theater-interior','origin-of-species','redstone-rocket','reference-to-oscar-de-la-renta','self-congratulating-coat-tails','sexual-victim','texas-flag','troop-ship','unanswered-telephone-call','warning-light','yoke'))
