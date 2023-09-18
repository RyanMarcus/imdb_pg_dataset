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
AND (mi2.info IN ('Australia','Burbank, California, USA','Germany','Helsinki, Finland','Madrid, Spain','Miami, Florida, USA','New Jersey, USA','San Diego, California, USA','Santa Monica, California, USA','South Africa','Stockholm, Stockholms län, Sweden','USA'))
AND (kt.kind in ('movie','tv movie','tv series','video game'))
AND (rt.role in ('actor','actress','guest','writer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(1998-01-12)','(2010-11-27)','Ashi Behati Introduces Jao as Her Son and as the Prince of Yangdon','Auf schmalem Grat','Fallen Angels','Get Rich or Die Tryin','Off and Running','The Fortune Cookie','The People Speak','The Wizened Woods'))
