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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Biography','Comedy','Musical','Sport','War','Western'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','composer','editor','guest'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.67)','(#1.91)','(#2.2)','(#2.42)','(#3.34)','A Night at the Opera','Anniversary','Black Gold','Countdown','Crime of Passion','Die große Chance','Hot Money','Man Hunt','Monty Python and the Holy Grail','No Place Like Home','Pack Up Your Troubles','Parnell','Part 6','San Quentin','School Days','Sesame Street','Stella','Success Story','The Auction','The Charge of the Light Brigade','The Lone Ranger','The Meeting','The Professional','The Spoilers','Tiger by the Tail','Tower of London','Whiplash','Yankee Doodle Dandy'))
