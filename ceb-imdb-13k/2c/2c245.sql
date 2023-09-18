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
AND (it1.id in ('5'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:Unrated','Finland:K-15','France:X','Germany:12','India:U','New Zealand:R16','Portugal:M/6','Sweden:15','USA:Passed','USA:R','USA:TV-PG'))
AND (mi2.info IN ('Action','Adult','Animation','Comedy','Family','Film-Noir','History','Music','Musical','Romance','Sci-Fi','Short','Thriller','War','Western'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','director','editor'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.739)','(#1.812)','(#9.13)','(#9.7)','Babes in Toyland','Designing Woman','Genesis','The House on Carroll Street','The Puppetoon Movie','With a Song in My Heart'))
