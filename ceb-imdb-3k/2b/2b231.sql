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
AND (it1.id in ('18'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Berlin, Germany','Chicago, Illinois, USA','Hollywood, Los Angeles, California, USA','Los Angeles, California, USA','Madrid, Spain','Mexico City, Distrito Federal, Mexico','New York City, New York, USA','Rome, Lazio, Italy','San Francisco, California, USA','Vancouver, British Columbia, Canada'))
AND (mi2.info in ('Comedy','Drama','Music','Romance','Short'))
AND (kt.kind in ('tv movie','tv series'))
AND (rt.role in ('cinematographer','costume designer'))
AND (n.gender in ('f'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('blood','character-name-in-title','doctor','father-daughter-relationship','father-son-relationship','fight','flashback','friendship','gay','hardcore','husband-wife-relationship','independent-film','kidnapping','lesbian','mother-daughter-relationship','number-in-title','oral-sex','party','sequel','singing','suicide'))
