SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('2'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Brazil','Finland','Italy','Poland','South Korea','UK'))
AND (kt.kind in ('episode','tv series','video game','video movie'))
AND (rt.role in ('director'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.125)','(#1.369)','(#1.491)','(#1.614)','(#1.71)','Annie Oakley','Beauty and the Beast','Brookside','Country Cousin','Ghost Story','Hemingway','Little Dorrit','Missing in Action','Money to Burn','Mozart','Sins of the Father','Sons and Daughters','The Big Parade of Comedy','The Black Stallion','The Haunting','The Promotion','Trading Places','World Wide Wrestling'))
