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
AND (it1.id in ('105'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('$11,000,000','$12,000','$14,000,000','$15,000,000','$150,000','$250,000','$300,000','$4,000','$4,000,000','$40,000,000','$6,000','$75,000,000','$8,000,000'))
AND (mi2.info IN ('CAM:Panasonic AG-DVX100','LAB:DeLuxe, Hollywood (CA), USA','LAB:FotoKem Laboratory, Burbank (CA), USA','OFM:16 mm','OFM:35 mm','OFM:Super 16','OFM:Video','PCS:Digital Intermediate','PCS:Panavision','PCS:Spherical','PCS:Super 16','PFM:Video','RAT:1.37 : 1','RAT:1.66 : 1'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('actress','costume designer','guest','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
