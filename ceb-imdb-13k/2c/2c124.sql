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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Bulgarian','Czech','English','Hindi','Japanese','Malayalam','Norwegian','Oriya','Urdu','Yoruba'))
AND (kt.kind in ('episode','movie','tv movie','video game'))
AND (rt.role in ('actor','actress'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.3459)','(1998-10-28)','(2008-12-19)','(2009-01-10)','Behati Has Evil Plans for Esmeralda','Carmen Electra','Climb Every Mountain','Domino Effect','Fire and Ice','Going Overboard','High Stakes','Last Tango','Let It Be Me','Secret History of Religion: Doomsday - Book of Revelation','The Incident','The Quarry','The Rita Flower or the Indelible Stench','The Sullivans','Touch of Death','Transamerica','Turkish Delight','Volcano Vacation Hell','You Do It to Yourself'))
