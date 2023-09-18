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
AND (it1.id in ('3'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Action','Adventure','Animation','Comedy','Crime','Documentary','Drama','Family','Horror','Thriller'))
AND (mi2.info in ('Australia:G','Australia:R','Canada:G','Chile:14','France:U','Germany:18','Netherlands:16','Singapore:M18','South Korea:12','South Korea:18','Switzerland:14','UK:U','USA:G','USA:Not Rated'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('producer','writer'))
AND (n.gender in ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('argument-between-couple','black-box','blood-drip','bowl-of-cherries','coca-cola-cooler','country-estate','daniel-boone','father-daughter-dating-same-woman','gang-brawl','international-criminal-court','kennedy','longshoremans-hook','lost-boy','medical-consent-form','picture-on-a-billboard','playboy-magazine','reference-to-robert-bork','reference-to-the-god-jupiter','rio-grande-river','school-sale','toilet-flush-off-camera','turned-into-bird','war-relics','washing-a-dress'))
