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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Panaflex Camera and Lenses by Panavision','LAB:Boyana Film Laboratory, Sofia, Bulgaria','LAB:DeLuxe, USA','LAB:Film Center, Mumbai, India','LAB:Metrocolor','OFM:16 mm','OFM:65 mm','PCS:(anamorphic)','PFM:Video','RAT:1.66 : 1'))
AND (mi2.info IN ('Biography','Drama','Music','War','Western'))
AND (kt.kind in ('episode','movie','video game','video movie'))
AND (rt.role in ('cinematographer','composer','costume designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.135)','(#10.6)','A Clockwork Orange','Blood Feud','Colors','Ill Be Seeing You','Life and Death','O Lucky Man!','Rain Man','The Country Girl','The Wild One'))
