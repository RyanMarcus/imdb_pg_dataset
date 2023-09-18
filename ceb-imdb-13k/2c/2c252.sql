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
AND (it1.id in ('3'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Animation','Biography','Comedy','Crime','Documentary','Drama','Family','Film-Noir','Horror','Music','Romance','Sport','Thriller','War'))
AND (mi2.info IN ('Argentina:Atp','Australia:PG','Finland:K-12','France:U','Germany:12','Netherlands:18','Netherlands:AL','Portugal:M/16','Sweden:Btl','UK:12','USA:G','USA:Not Rated'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('director','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.294)','(#1.489)','(#1.5)','(#1.562)','(#1.711)','(#7.10)','1984 NFL Draft','Brookside','Double Your Pleasure','Kismet','Knightriders','Sleeping Beauty','The In Crowd'))
