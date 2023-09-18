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
AND (mi1.info IN ('LAB:FotoKem Laboratory, Burbank (CA), USA','PCS:Panavision','PCS:Redcode RAW','PCS:Spherical','PFM:70 mm','PFM:Digital','PFM:Video','RAT:1.78 : 1 / (high definition)','RAT:1.78 : 1','RAT:1.85 : 1'))
AND (mi2.info IN ('$20,000','$25,000','$25,000,000','$40,000','$500','$6,000,000','$60,000,000','€ 10,000'))
AND (kt.kind in ('tv series','video game','video movie'))
AND (rt.role in ('director','production designer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
