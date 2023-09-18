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
AND (it1.id in ('8'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Australia','Austria','Czechoslovakia','Finland','France','Israel','Japan','South Africa','Spain','Sweden','UK','West Germany','Yugoslavia'))
AND (mi2.info IN ('Canada:PG','Germany:16','Netherlands:12','Netherlands:16','Netherlands:AL','Spain:18','UK:PG','UK:U'))
AND (kt.kind in ('episode','movie','video game'))
AND (rt.role in ('cinematographer','editor','miscellaneous crew'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
