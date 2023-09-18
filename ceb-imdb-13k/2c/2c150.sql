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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Adult','Adventure','Animation','Biography','Comedy','Crime','Mystery','Reality-TV','Romance','Sci-Fi','Short','Sport'))
AND (mi2.info IN ('CAM:Canon 5D Mark II','LAB:Fotofilm S.A., Madrid, Spain','LAB:Rank Film Laboratories, Denham, UK','LAB:Technicolor, Hollywood (CA), USA','OFM:Live','PCS:Digital Betacam','RAT:1.85 : 1'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('producer','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.3386)','(#1.5382)','(#1.716)','(#16.44)','(#16.68)','(#17.150)','(#8.35)','(2000-04-13)','(2008-07-18)','(2012-10-03)','314','Circle of Life','Fully Loaded','Held Up','Hollywood Singing and Dancing: A Musical Treasure','Infection','Joy to the World','Just One Kiss','Miracles','Race to the Moon','Scooby-Doo','The Glove','The Japanese Grand Prix','Touch','Trafics','Truth or Consequences','Unnatural Causes'))
