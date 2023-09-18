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
AND (it1.id in ('7'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('PFM:35 mm','RAT:2.35 : 1'))
AND (mi2.info in ('Finland:K-12','Iceland:L','UK:15'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('miscellaneous crew','producer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('1860-census','axe-in-the-chest','burning-a-building','cape-hatteras-north-carolina','clothes-ripped-off','horse-drawn-snow-sled','lap-dance','lost-money','manchester-university','pre-nazi','rubber-dress'))
