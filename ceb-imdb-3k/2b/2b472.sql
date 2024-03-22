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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Netherlands:AL','UK:R18'))
AND (mi2.info in ('English'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('actor','director'))
AND (n.gender in ('m'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('barbes-market-paris','bullock','copycat-murder','french-fleet','garage-beatdown','gharial','hanuman','homosexual-love','idleness','office-manager','paiwan','photocell','racing-blood','ring-of-stones','sebaceous-cyst','snob','societal-dysfunction','staircase-waterfall','win','writing-a-letter-home'))