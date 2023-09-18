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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Argentina:Atp','Belgium:KT','Finland:K-18','Portugal:M/16','Portugal:M/18','USA:TV-G','West Germany:12','West Germany:16'))
AND (kt.kind in ('movie','tv movie','video movie'))
AND (rt.role in ('actress','cinematographer','composer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.10)','(#1.230)','(#1.275)','(#1.320)','(#1.344)','(#1.414)','(#1.541)','(#1.563)','(#1.6)','(#1.642)','(#2.76)','(#4.41)','(#4.5)','A Night of Comic Relief 2','A Piece of the Action','Above the Law','Adventures in Babysitting','Another Country','Asa Branca - Um Sonho Brasileiro','Battle of the Bulge','Cannonball Run II','Come Out Fighting','Competition','Deja Vu','Flash Point','Hearts and Flowers','Hidden Agenda','Its Magic','Koncert','Love Me or Leave Me','Nothing But the Truth','Pension Schöller','The Cotton Club','The Engagement','Whats Up, Doc?','White Palace'))
