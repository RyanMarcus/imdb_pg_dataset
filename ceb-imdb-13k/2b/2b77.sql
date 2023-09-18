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
AND (it1.id in ('8'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Belgium','Czechoslovakia','Finland','France','Germany','Italy','Japan','Philippines','UK','USA','West Germany','Yugoslavia'))
AND (mi2.info in ('Action','Adventure','Comedy','Crime','Documentary','Drama','Fantasy','Music','Mystery','Romance','Short'))
AND (kt.kind in ('tv series','video game'))
AND (rt.role in ('cinematographer','composer'))
AND (n.gender in ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('anal-sex','family-relationships','friendship','hardcore','husband-wife-relationship','independent-film','new-york-city','non-fiction','one-word-title','party'))
