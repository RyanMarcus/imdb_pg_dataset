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
AND mi1.info IN ('Crime','Documentary','Short','Thriller','Western')
AND mi2.info IN ('MET:','MET:100 m','MET:15.2 m','MET:23 m','OFM:35 mm','OFM:68 mm','PCS:Spherical','PFM:35 mm','RAT:1.33 : 1')
AND kt.kind IN ('movie')
AND rt.role IN ('editor')
AND n.gender IN ('m')
AND t.production_year <= 1925
AND 1875 < t.production_year
