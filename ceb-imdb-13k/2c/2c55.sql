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
AND (mi1.info IN ('Argentina','Finland','Hong Kong','India','Italy','Japan','UK','USA'))
AND (mi2.info IN ('Argentina:13','Canada:PG','Finland:K-16','Germany:16','USA:PG','USA:TV-PG','USA:Unrated','West Germany:6'))
AND (kt.kind in ('movie','tv movie','tv series','video game'))
AND (rt.role in ('actor','actress','cinematographer','guest','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#2.4)','(#5.38)','(#5.9)','Anniversary','Behind the Mask','Big City','Deadline','Delayed Action','Don Juan Tenorio','Fast Company','Find the Lady','Flash Gordon','Fools Gold','Gold Fever','Hired Wife','KLK an PTX - Die Rote Kapelle','Key Witness','Marihuana','Maya','Mrs. Wiggs of the Cabbage Patch','My Wild Irish Rose','Overland Mail','Partners','Pot-Bouille','Rembrandt','Shichinin no samurai','The Adventurers','The Challenge','The Country Doctor','The Innocent','The Judge','The Long Wait','The Lottery','The Man Who Came to Dinner','The Opposite Sex','The Photographer','The Undercover Man','The Winslow Boy','Top Secret','Turnabout'))
