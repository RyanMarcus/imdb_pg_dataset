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
AND (it1.id in ('4'))
AND (it2.id in ('105'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('English'))
AND (mi2.info in ('$12,000','$150,000','$2,000,000','$200','$300,000','$35,000','$5,000,000','$6,000','$8,000','£1,000'))
AND (kt.kind in ('tv movie','tv series'))
AND (rt.role in ('costume designer','editor'))
AND (n.gender in ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('advocate-magazine','burning-a-passport','cross-country-race','death-of-main-character','ed-sullivan','falsetto-voice','fire-in-a-wastepaper-basket','fountain-of-love','grand-opera','jazz-trio','king-louis-xi','mall-security','monopoly-money','monster','mulatto','murderous-wager','music-score-features-harpsichord','near-miss','payroll','reference-to-charles-bronson','reference-to-tess-of-the-dubervilles','reference-to-tiffanys','rolling-spin','skit-and-skat','streetcar-conductor'))
