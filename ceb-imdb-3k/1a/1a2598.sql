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
AND (it1.id in ('6'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','AGA Sound System','Cinephone','De Forest Phonofilm','Dolby Digital','Mono','Silent','Stereo','Vitaphone'))
AND (mi2.info IN ('MET:','PFM:16 mm','PFM:70 mm','PFM:Video','RAT:1.36 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('director','guest','production designer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
