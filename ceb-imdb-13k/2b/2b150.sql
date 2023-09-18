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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('France','Germany','USA','West Germany'))
AND (mi2.info in ('Argentina:13','Canada:AA','France:X','Italy:T','Switzerland:10','USA:E','West Germany:18'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('production designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('blood','dancing','death','father-son-relationship','female-nudity','fight','hardcore','independent-film','kidnapping','love','male-frontal-nudity','male-nudity','mother-daughter-relationship','new-york-city','one-word-title','party','singer','suicide'))
