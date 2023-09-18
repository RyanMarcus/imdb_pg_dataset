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
AND (it1.id in ('2'))
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Black and White','Color'))
AND (mi2.info in ('10','104','15','17','19','55','58','75','85','87','90','99','USA:11','USA:12','USA:13'))
AND (kt.kind in ('movie','video movie'))
AND (rt.role in ('miscellaneous crew'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('bare-breasts','bare-chested-male','based-on-play','dancing','death','hardcore','homosexual','hospital','independent-film','lesbian','love','mother-daughter-relationship','murder','new-york-city','nudity','number-in-title','one-word-title','police','revenge','singer','singing'))
