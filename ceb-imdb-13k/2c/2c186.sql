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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('OFM:8 mm','OFM:Video','PCS:Dyaliscope','PFM:35 mm','RAT:2.35 : 1'))
AND (mi2.info IN ('Argentina','Bulgaria','Iran','Italy','Mexico','Portugal','UK','West Germany'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('costume designer','director','guest'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.128)','(#1.310)','(#1.609)','Baby Blues','Death Trap','Double Exposure','Hail to the Chief','Journeys End','Living Doll','Mirror Image','Proof Positive','Star Wars: Episode VI - Return of the Jedi','The Big Day','The Pigeon','The Renegades','Vengeance'))
