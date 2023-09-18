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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Black and White','Color'))
AND (mi2.info in ('Finland:(Banned)','Iceland:L','Norway:16','Sweden:Btl','UK:PG','UK:X','USA:Unrated','West Germany:18'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('writer'))
AND (n.gender in ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('972-year-old','aerial-gunner','aztec-temple','boatswain','committing-suicide','communist-persecution','double-indemnity','gun-training','hydrogeology','loan-and-trust-company','murder-of-aunt-by-aunt','platform-shoes','radetzky-march','recurring-gag','reference-to-miserere-mei-deus-the-musical-composition','runaway-truck','russian-royalty','sales-pitch','skin-shot-off','stagecoach-rollover','taxidermy','three-word-title','weisbaden-germany'))
