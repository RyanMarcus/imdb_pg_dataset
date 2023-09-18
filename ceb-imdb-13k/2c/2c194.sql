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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Finland:S','Hong Kong:IIB','Norway:7','Sweden:15','USA:X'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','editor','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.5059)','(#5.52)','(#8.42)','(1995-12-21)','(1998-08-18)','(2003-02-24)','(2005-06-19)','(2009-01-23)','(2010-03-28)','(2010-05-30)','(2010-06-29)','(2010-11-23)','Common','Culture','Death of a Dynasty','Der Geburtstag','Equal Justice','Eurovisión','Grief','Guinea Pigs','Live 8','Loggerheads','Lose Yourself','MacGruber','Milfay','No Way to Treat a Lady','One More Kiss','Opposite Day','Paradise Alley','Shark Week','Spirit Warriors','The Expert','The Look of Love','The Tipping Point','Were Not at Charm School Learning How to Be a Gentleman, Were Racing'))
