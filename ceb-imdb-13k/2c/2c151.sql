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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Adventure','Biography','Comedy','Fantasy','History','Musical','Mystery','News','War'))
AND (mi2.info IN ('70 mm 6-Track','DTS','Datasat','Dolby Digital EX','Dolby SR','Dolby','Mono','SDDS','Silent','Stereo'))
AND (kt.kind in ('episode','tv movie','video game'))
AND (rt.role in ('director','miscellaneous crew','producer','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.10114)','(#1.1363)','(#1.3697)','(#1.3737)','(#1.6051)','(#12.45)','(#16.75)','(#4.152)','(#8.6)','(1999-04-19)','(2001-02-24)','(2003-01-29)','(2006-06-20)','(2009-01-12)','(2012-05-21)','(2012-11-27)','All About Eve','Alles aus Liebe','Am Scheideweg','Appaloosa','Army of Darkness','Bicentennial Man','Brother from Another Series','Brüno','Cerca de la verdad','Changes','Dracula: The Musical','Film Noir','Geisterstunde','Hatred Starts to Grow in Jaos Heart','Housewarming','Jappening con Ja','Mind Games','Once Again','Osa 2','Pregnant Pause','Protection','Shes Gone','Sisterly Love','Swallow','Szabadság, szerelem','Tempting Fate','The Blackout','The Divorce','The Hard Sell','The King and I','The Mechanic','Whats Eating Gilbert Grape','Whats Your Sign?','Zombie Prom'))
