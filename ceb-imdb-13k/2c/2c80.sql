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
AND (mi1.info IN ('Iceland:12','Sweden:15','UK:18','USA:G','West Germany:16'))
AND (mi2.info IN ('Action','Adult','Adventure','Crime','Documentary','Drama','Family','History','Horror','Mystery','Sci-Fi'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('director','miscellaneous crew','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.103)','(#1.12)','(#1.52)','(#3.13)','(#4.9)','(#6.19)','(#6.24)','A Midsummer Nights Dream','All Star Comedy Carnival','Batman','Charleys Tante','Crossfire','Der Hexer','Down on the Farm','Great Expectations','Homecoming','Its a Small World','Manhunt','Many Happy Returns','Marriage','Ningen no jôken','Parnell','Play School','Premiere','Rhubarb','Robin Hood','Safari','Spartacus','The Auction','The Baby Sitter','The Big Noise','The Bounty Hunter','The Brothers','The Chaser','The Man Outside','The Photographer','The Spider','The Unwanted','The Wild Bunch','The Wrong Man','Tower of London'))
