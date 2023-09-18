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
AND (it1.id in ('18'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('California, USA','London, England, UK','Miami, Florida, USA','Santa Clarita, California, USA','Spain','Sydney, New South Wales, Australia','Toronto, Ontario, Canada','USA'))
AND (mi2.info IN ('Action','Adventure','Comedy','Crime','Fantasy','History','Horror','Music','Sci-Fi','Short','Western'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','editor','guest','miscellaneous crew','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.157)','(#1.159)','(#1.461)','(#1.569)','(#1.712)','(#2.22)','(1988-12-17)','A Girls Best Friend','Annie','Brainstorm','Children of the Night','Discipline','Hollywood Goes to War','House of Cards','Jappening con Ja','Lulu','Men of Respect','Out of Bounds','Something to Live For','Teil 2','Temptation','The Fall Guy','The Gypsies','The Lie','The Little Match Girl','The Love Machine','The Patriot','The Teacher','The Way We Were','To Kill a Cop','True Grit','Up the Creek','When in Rome'))
