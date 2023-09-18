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
AND (it1.id in ('5'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Australia:G','Canada:PG','Canada:R','Iceland:16','South Korea:12','South Korea:15','Spain:T','UK:15','USA:PG'))
AND (mi2.info in ('DTS','Dolby','Mono','SDDS','Stereo'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('producer'))
AND (n.gender in ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('apple-picker','balloonist','clothes-cut-off','contempt-of-congress','country-doctor','early-christian','high-altitude','horading-money','lion-fight','mugged','nod','playing-solitaire','pretending-to-be-statue','receptor','reference-to-joe-namath','sandwich-seat','star-wars-documentary','trucking','year-1866'))
