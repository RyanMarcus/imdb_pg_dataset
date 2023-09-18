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
AND (mi1.info in ('Albania','Austria','Brazil','Denmark','France','Ireland','Israel','Italy','Japan','Mexico','South Korea','Sweden','Taiwan'))
AND (mi2.info in ('Adventure','Comedy','Documentary','Drama','Family','History','Music','Mystery','Romance'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('actress','director'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('amateur-film-festival','boastful','book-on-top-of-head','church-bells','conflicting-directions','dreadnought','drug-courier','facial-reconstruction','hatred-against-mother','latter-day-saints','math-exam','ogre','parental-protection','pieter-bruegel','real-life-incident','research-funding','sex-with-butler','shaved-chest','slack-key-guitar','subway','tied-spread-eagle-face-down','woman-stabbed'))
