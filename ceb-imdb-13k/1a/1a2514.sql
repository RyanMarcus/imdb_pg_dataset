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
AND (it1.id in ('4'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Albanian','Dutch','Finnish','German','Hungarian','Korean','Polish','Russian'))
AND (mi2.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:Technicolor, USA','MET:150 m','OFM:35 mm','RAT:1.20 : 1','RAT:2.35 : 1'))
AND (kt.kind in ('episode','movie','video game','video movie'))
AND (rt.role in ('actress'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
