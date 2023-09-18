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
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Albuquerque, New Mexico, USA','Amsterdam, Noord-Holland, Netherlands','Barcelona, Cataluña, Spain','Budapest, Hungary','Germany','Israel','Montréal, Québec, Canada','New Orleans, Louisiana, USA','Phoenix, Arizona, USA','San Diego, California, USA','Stage 37, Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Vancouver, British Columbia, Canada','Winnipeg, Manitoba, Canada'))
AND (kt.kind in ('episode','movie','tv movie','video movie'))
AND (rt.role in ('actress','director','guest','producer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.4307)','(#1.450)','(#1.6030)','(#14.13)','(1998-11-06)','(2000-11-02)','(2002-05-24)','(2006-08-25)','(2007-04-25)','(2008-04-16)','(2010-07-24)','(2012-11-01)','(2013-03-14)','Annie Leibovitz: Life Through a Lens','Another Woman','Dead Ringer','Double Jeopardy','EastEnders: Christmas Party','Hang Time','I Dream of Jeannie','Invitation','La ley del silencio','La madrastra','Rufus','Semifinals Week 3','Staying Afloat','Stilyagi','Studs','Tanz auf dem Vulkan','Testosterone','The Cage','The Comedian','The Distinguished Gentleman','The German Grand Prix: Qualifying','The Last Party','The Merge','The Second Time Around','Tim Robbins','Top 6 Perform','Trouble in Mind','Two Weeks','Wendy Considers Forced Eviction','XX premios Goya','Xmas Story'))
