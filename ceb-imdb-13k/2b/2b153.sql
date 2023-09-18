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
AND (mi1.info in ('CAM:Panasonic AG-HVX200','OFM:16 mm','PCS:Panavision','PFM:Digital','RAT:1.85 : 1'))
AND (mi2.info in ('English','German','Italian','Mandarin'))
AND (kt.kind in ('episode','video movie'))
AND (rt.role in ('cinematographer','producer'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (k.keyword IN ('artificial-food','bloodsucker','burj-khalifa','common-enemy','crime-school','cup','fish-fry','giant-tree','la-raza','m-4-machine-gun','public-investment','salem','san-francisco-bay-guardian-the-newspaper','searching-for-happiness','sports-coach','tagalog','water-drain-spout'))
