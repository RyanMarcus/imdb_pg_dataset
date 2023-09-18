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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('LAB:DeLuxe','MET:600 m','PCS:Spherical','PFM:35 mm','PFM:Video','RAT:1.33 : 1','RAT:1.37 : 1'))
AND (mi2.info in ('English','Japanese','Spanish'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('actor'))
AND (n.gender in ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('bank-of-china','blancmange','british-monarch','character-says-i-love-you-and-i-always-will','creole','demolition-crew','disguised-as-horse','gay-activist-alliance','hall-of-records','hokianga','horn-rimmed-glasses','jungle-fighting','monkey-king','night-air-attack','nude-body','raggedy-ann','repressed-desire','shock-therapy','wagner-ride-of-the-valkyries'))
