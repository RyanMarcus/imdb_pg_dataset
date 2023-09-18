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
AND (mi2.info IN ('Argentina:16','Finland:K-18','UK:12','UK:15','UK:PG','USA:PG'))
AND (kt.kind in ('episode','tv movie','tv series','video game'))
AND (rt.role in ('actor','composer','director'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.130)','(#1.268)','(#1.274)','(#1.338)','(#1.466)','(#1.621)','(#1.632)','(#1.679)','(#1.93)','(#2.45)','(#4.21)','(#9.22)','All in a Days Work','Childs Play','Cinématon','Comic Relief','Cover-Up','Der Rosenkavalier','Doomsday','Eight Men Out','Grand Theft Auto','Hot Line','Hot Money','Jeanne Eagels','König Drosselbart','La venganza de Don Mendo','Martha','Mutiny','Oedipus the King','Popples','Summer Holiday','The Carrier','The Duel','The Gunman','Victims','Young Doctors in Love'))
