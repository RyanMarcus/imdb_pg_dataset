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
AND (mi1.info in ('France','Turkey'))
AND (mi2.info in ('French','Turkish'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('writer'))
AND (n.gender in ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('anal-sex','bare-chested-male','based-on-novel','character-name-in-title','cigarette-smoking','father-son-relationship','female-nudity','gun','homosexual','jealousy','murder','non-fiction','nudity','number-in-title','oral-sex','party','police','revenge','sequel'))
