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
AND (mi1.info in ('42','90'))
AND (mi2.info in ('English'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('director','miscellaneous crew'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('bondage-gear','bouchavesnes-france','cleaning-fluid','end-of-an-era','falling-off-a-porch-step','flippy','friendship-between-women','gate-of-bobo','high-school-friends','hungry-hungry-hippos','kimberly-australia','knife-held-to-ones-throat','lecture-tour','make-love-not-war','male-rivalry','preserved-severed-head','reference-to-dreyfus-case','reference-to-henry-viii','vibration','wanderer','whipping-scars'))
