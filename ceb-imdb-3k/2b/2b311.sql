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
AND (it1.id in ('8'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Australia','Spain','UK'))
AND (mi2.info in ('Dolby Digital','Dolby'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('composer','costume designer'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (k.keyword IN ('american-third-army','based-on-story','camera-shy','communist-conspiracy','diet-industry','entre-rios-argentina','exposure','faberge-crystal','father-son-reconciliation','full-service','man-with-two-faces','mob-action','year-332-bc'))
