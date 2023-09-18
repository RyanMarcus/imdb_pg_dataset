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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('CAM:Panasonic AG-DVX100','CAM:Panavision Cameras and Lenses','LAB:DeLuxe','OFM:Video','PCS:Spherical','PCS:Super 35','PFM:Video','RAT:1.33 : 1','RAT:1.78 : 1'))
AND (mi2.info in ('Adventure','Comedy','Drama','Music','Musical','Romance','Short','Sport','Thriller','War'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('composer','production designer'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('based-on-play','blood','cigarette-smoking','family-relationships','father-daughter-relationship','female-frontal-nudity','friendship','homosexual','husband-wife-relationship','male-frontal-nudity','male-nudity','mother-daughter-relationship','murder','new-york-city','non-fiction','oral-sex','revenge','singing','suicide'))
