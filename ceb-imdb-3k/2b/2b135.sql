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
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Comedy','Documentary','Drama','Family','Short'))
AND (mi2.info in ('10','11','110','14','15','17','30','45','6','7','80','USA:30','USA:9'))
AND (kt.kind in ('tv movie','video game'))
AND (rt.role in ('editor','production designer'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('amputating-someones-leg','avant-garde','death-row','facing-fear','farenheit','feces-poured-on-someone','fingernails-painting','israeli-father','kibei','mole-removal','morning-coffee','peloponnese-greece','phony-doctor','reference-to-david-cassidy','reference-to-everyman-the-play','reference-to-wendys-restaurant','stripping-in-front-of-a-mirror','train-set','uncircumcised-men','unjustified-invasion'))
