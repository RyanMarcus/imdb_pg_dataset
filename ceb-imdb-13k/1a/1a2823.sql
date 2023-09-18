SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('7'))
AND (it2.id in ('105'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:Technicolor, Hollywood (CA), USA','OFM:Video','PCS:Panavision','PFM:35 mm','PFM:Digital'))
AND (mi2.info IN ('$10,000','$11,000,000','$13,000,000','$2,000,000','$2,500,000','$25,000,000','$4,000','$50,000,000','$8,000,000'))
AND (kt.kind in ('tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
