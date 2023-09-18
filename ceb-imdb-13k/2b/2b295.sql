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
AND (it1.id in ('3'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Comedy','Documentary','Drama','Fantasy','Music','Romance','Sci-Fi','Short','Western'))
AND (mi2.info in ('MET:','MET:15.2 m','MET:1500 m','MET:23 m','PCS:Spherical','PFM:16 mm','PFM:68 mm','RAT:1.20 : 1','RAT:1.33 : 1','RAT:1.37 : 1','RAT:1.85 : 1','RAT:2.35 : 1'))
AND (kt.kind in ('tv series','video game','video movie'))
AND (rt.role in ('director'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('based-on-novel','based-on-play','character-name-in-title','cigarette-smoking','doctor','dog','lesbian-sex','male-frontal-nudity','mother-daughter-relationship','nudity','oral-sex','police','revenge','singer','tv-mini-series','violence'))
