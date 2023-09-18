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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Dutch','English','French','Italian','Spanish'))
AND (mi2.info in ('Dolby Digital','Dolby SR','Dolby','Mono','SDDS','Stereo'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('director'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (k.keyword IN ('30s-cartoon','automation','bisexual','bus-massacre','chateauroux-france','cutting-vegetable','cylon','debate-coach','eating-paint','el-uvero-cuba','false-passport','firewalker','frogger','lazarus','man-monster-fight','medical-supplies','middle-eastern-food','model-husband','native-american-medicine','stomach-pumped','survivor-guilt','thoracic-cage','u.s.-invasion-of-afghanistan'))
