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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Bangladesh','Luxembourg','Nepal','Soviet Union','Switzerland','USA','Uruguay'))
AND (mi2.info IN ('Animation','Drama','Fantasy','Music','Reality-TV','Short','Sport','War'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('actor','composer','director','production designer','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.1238)','(#1.3398)','(#1.5304)','(#1.640)','(#1.999)','(2002-06-04)','(2011-08-05)','(2013-01-05)','1974','Amazons','Area 51','Chapter 19','Comic Relief 2007: The Big One','Cop Games','Facade','Head Games','Heavy Metal','Hesher','Johnny','Lethal Weapon 2','Man of the House','Medal of Honor: Rising Sun','Mejor que nunca','Neue Hoffnung','Rascals','Ripple Effect','Running Home','Silent Hill: Revelation 3D','The Cake','The Man That Got Away','WWE Hall of Fame 2007','Wait'))
