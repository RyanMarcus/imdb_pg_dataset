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
AND (it1.id in ('5'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Australia:M','Finland:K-11','Germany:6','Hong Kong:IIB','Italy:T','Italy:VM14','Philippines:R-18','Singapore:PG','Sweden:15','Switzerland:10','Switzerland:16','Switzerland:7'))
AND (mi2.info in ('English','French','German','Tagalog'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('editor'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('based-on-play','blood','character-name-in-title','female-frontal-nudity','female-nudity','gay','homosexual','hospital','husband-wife-relationship','male-frontal-nudity','mother-daughter-relationship','mother-son-relationship','number-in-title','party','police','revenge','singer','surrealism','tv-mini-series','violence'))
