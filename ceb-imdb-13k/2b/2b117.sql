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
AND (mi1.info in ('CAM:Arriflex Cameras and Lenses','CAM:Panasonic AG-DVX100','CAM:Panavision Cameras and Lenses','CAM:Red One Camera','LAB:FotoKem Laboratory, Burbank (CA), USA','OFM:16 mm','OFM:35 mm','PCS:Digital Intermediate','PCS:Super 35','PFM:Video','RAT:1.33 : 1','RAT:1.37 : 1'))
AND (mi2.info in ('Action','Adult','Comedy','Crime','Documentary','Drama','Romance','Sci-Fi','Short','Sport','Thriller'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('production designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('doctor','family-relationships','female-frontal-nudity','female-nudity','flashback','gay','hardcore','homosexual','jealousy','kidnapping','male-frontal-nudity','mother-daughter-relationship','new-york-city','party','sequel','sex','suicide'))
