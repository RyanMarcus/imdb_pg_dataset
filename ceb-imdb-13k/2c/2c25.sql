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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Color'))
AND (mi2.info IN ('LAB:Technicolor','LAB:Technicolor, USA','MET:1800 m','MET:900 m','OFM:35 mm','OFM:Live','PCS:Panavision','PFM:35 mm','RAT:1.66 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','director','guest','miscellaneous crew','producer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.93)','(#2.36)','A Star Is Born','Accidents Will Happen','After the Ball','All at Sea','Career','Cinderella','Collectors Item','Double Cross','Executive Action','Jeanne Eagels','Les deux orphelines','Mistaken Identity','Mr. Skeffington','New Musical Express Poll Winners Concert','O.S.S.','Outrage','Rebecca','Reno','Saturdays Hero','Smoke Screen','Stand Up and Be Counted','Success Story','Sweethearts','The Clown','The Condemned','The Dinner Party','The Game','The Guest','The Gun Runners','The Journey','The Outcasts of Poker Flat','The Payoff','The Prophet','The Secret Life of Walter Mitty','The Silver Chalice','The Storm','The Stowaway','Vodkaa, komisario Palmu'))
