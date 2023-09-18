SELECT COUNT(*) FROM title as t,
kind_type as kt,
movie_info as mi1,
info_type as it1,
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
AND it1.id = '3'
AND it2.id = '7'
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND mi1.info IN ('Adventure','Animation','Crime','Drama','Family','Fantasy','Horror','Romance','Sci-Fi','Short','Thriller')
AND mi2.info IN ('CAM:Red One Camera','OFM:35 mm','OFM:Super 16','PCS:Digital Intermediate','PFM:35 mm','RAT:1.78 : 1','RAT:2.35 : 1')
AND kt.kind IN ('tv movie','video game')
AND rt.role IN ('editor')
AND n.gender IN ('m')
AND t.production_year <= 2010
AND 2000 < t.production_year
