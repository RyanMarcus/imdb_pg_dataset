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
AND (it1.id in ('1'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('107','15','19','70','77','78','95','USA:17','USA:48','USA:78','USA:87','USA:88','USA:93'))
AND (mi2.info in ('English','French','Spanish'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('actor'))
AND (n.gender in ('m'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('acid-house','age-verification','axe-in-the-head','dentist','falling-to-death','godzilla-junior','hiding-under-a-desk','hit-by-a-fire-engine','honor-court','horse-costume','mother-deliverying-own-baby','nst','poisonous-snake-bite','posing-for-portrait','reference-to-hannah-montana','science-show','throwing-a-book','veterinarian','veterinary-surgeon','wild-chicken','woman-played-by-a-man'))
