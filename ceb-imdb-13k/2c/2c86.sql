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
AND (mi2.info IN ('Finland:K-16','Norway:16','Sweden:11','UK:X','USA:R','USA:TV-G','USA:TV-PG','USA:X'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('actress','cinematographer','director','editor'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.112)','(#1.76)','(#3.6)','(#5.21)','2001: A Space Odyssey','Black Bart','Chûshingura','Die Fledermaus','If You Knew Susie','Karussell','Kvartetten som sprängdes','La cieca di Sorrento','Stingaree','The Awakening','The Barrier','The Clock','The Executioners','The Great Train Robbery','The Plunderers','The Verdict'))
