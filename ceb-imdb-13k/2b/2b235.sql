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
AND (it1.id in ('7'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('CAM:Arriflex Cameras and Lenses','CAM:Red One Camera','LAB:DuArt Film Laboratories Inc., New York, USA','LAB:Technicolor, Hollywood (CA), USA','LAB:Technicolor, USA','PFM:70 mm','PFM:Digital','RAT:1.66 : 1'))
AND (mi2.info in ('Black and White','Color'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('costume designer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('anal-sex','bare-chested-male','dog','female-nudity','flashback','friendship','hardcore','husband-wife-relationship','jealousy','lesbian-sex','male-frontal-nudity','mother-son-relationship','murder','non-fiction','oral-sex','sex','surrealism','violence'))
