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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Australia:R','Brazil:16','Finland:S','Germany:16','Iceland:12','Netherlands:16','New Zealand:R18','Portugal:M/16','Spain:T','UK:PG','USA:Unrated','USA:X'))
AND (mi2.info in ('OFM:35 mm','PCS:Digital Intermediate','PCS:Spherical','PCS:Super 35','PFM:35 mm','RAT:1.33 : 1','RAT:1.85 : 1','RAT:2.35 : 1'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('actress','production designer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('arson-specialist','asked-to-the-prom','courbevoie-france','golden-anniversary','hired-to-steal','homeowner-association','housemate','inconvenient-person','leica-camera','manzanita','menstrual-cycle','over-the-hill','reason','reference-to-the-new-york-observer','sari','satyriasis','schlager','shot-in-the-temple','street-kids','street-show','torcy-france'))
