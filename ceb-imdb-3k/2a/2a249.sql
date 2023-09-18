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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('CAM:Panavision Cameras and Lenses','OFM:35 mm','PCS:Digital Intermediate','PCS:Super 35','PFM:35 mm','RAT:1.37 : 1','RAT:1.85 : 1','RAT:2.35 : 1'))
AND (mi2.info in ('Argentina:13','Argentina:Atp','Brazil:Livre','France:-12','France:-16','Germany:BPjM Restricted','Netherlands:12','Norway:15','Switzerland:14','UK:12'))
AND (kt.kind in ('movie','video movie'))
AND (rt.role in ('cinematographer','editor'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
