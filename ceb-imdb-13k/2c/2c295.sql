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
AND (mi1.info IN ('Australia:PG','Finland:K-18','France:-16','Germany:12','Netherlands:16','South Korea:All','USA:G'))
AND (mi2.info IN ('Adventure','Animation','Biography','Crime','Documentary','Drama','Film-Noir','History','Music','Musical','Romance','Sport','War','Western'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','composer','guest','production designer','writer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.0)','(#1.44)','(#2.28)','(#3.16)','(#6.10)','Aoi sanmyaku','Assignment in Brittany','Cinderella Jones','Der Vogelhändler','Handle with Care','Honky Tonk','Hostage','Law and Order','Noblesse Oblige','Rendezvous','Rich Man, Poor Man','Secret Agent X-9','Secrets','Stand Up and Cheer!','The Adventures of Huckleberry Finn','The Big Broadcast','The Breaking Point','The Green Pastures','The Lottery','The Promise','The Reluctant Dragon','The Roaring Twenties','White Eagle','Whom the Gods Destroy','Wo Du hin gehst...'))
