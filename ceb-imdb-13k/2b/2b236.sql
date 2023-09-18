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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Austin, Texas, USA','Berlin, Germany','Brooklyn, New York City, New York, USA','California, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Manhattan, New York City, New York, USA','Melbourne, Victoria, Australia','New York City, New York, USA','Toronto, Ontario, Canada','USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (mi2.info in ('Australia','Germany','USA'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('editor','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('chef','ex-political-prisoner','hydrocortisone','intelligentsia','jammed-door','money-carrier','quechua-indians','reference-to-jack-smith','roof-terrace','smoking','spaceshipone','stave','teenage-dancer','urban-sprawl'))
