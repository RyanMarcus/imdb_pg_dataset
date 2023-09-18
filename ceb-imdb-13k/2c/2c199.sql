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
AND (mi2.info IN ('Adventure','Biography','Comedy','Crime','Family','Game-Show','History','Music','Thriller','War'))
AND (kt.kind in ('movie','tv movie','tv series'))
AND (rt.role in ('actress','costume designer','director','editor','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#2.20)','(#2.9)','(#5.7)','(#8.13)','Antigone','Jeder stirbt für sich allein','Justice','Little Boy Lost','Madeleine','Manhunt','Scaramouche','The Assassin','The Best Man','The Bounty Hunter','The Pied Piper','The Ring','The Show of Shows','Thirty Seconds Over Tokyo','Trial by Fire','Wing and a Prayer'))
