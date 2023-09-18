SELECT mi1.info, n.name, COUNT(*)
FROM title as t,
kind_type as kt,
movie_info as mi1,
info_type as it1,
cast_info as ci,
role_type as rt,
name as n,
info_type as it2,
person_info as pi
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.movie_id = mi1.movie_id
AND ci.role_id = rt.id
AND n.id = pi.person_id
AND pi.info_type_id = it2.id
AND (it1.id IN ('5','6','8'))
AND (it2.id IN ('29'))
AND (mi1.info IN ('6-Track Stereo','Argentina:X','Austria:16','Azerbaijan','Bahamas','Colombia:18','DTS 70 mm','Denmark:12','Dolby Stereo','Finland:K-6/4','Ireland:(Banned)','New Zealand:(Banned)','Peru','Poland:16','Romania:I.M.-18','Singapore:(Banned)','Spain:16','Switzerland:18','West Germany:0','West Germany:o.Al.'))
AND (n.name ILIKE '%ha%')
AND (kt.kind IN ('episode','movie','tv series'))
AND (rt.role IN ('cinematographer','composer','editor','writer'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
GROUP BY mi1.info, n.name
