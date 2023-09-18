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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Belgium','Georgia','India','Switzerland','UK','Venezuela'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','editor','guest','producer','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.14)','(#1.187)','(#1.326)','(#1.42)','(#1.486)','(#1.53)','(#11.5)','(#2.29)','(#3.22)','(#7.12)','(#9.24)','Abduction','Act of Vengeance','Death Sentence','Dyesebel','Fighting Back','For Richer, for Poorer','Home for Christmas','Hôtel Terminus','Its All Happening','Live and Let Die','Olho por Olho','Playing with Fire','Salsa','Shall We Dance?','Suburbia','The 43rd Annual Golden Globe Awards','The Awakening','The Final Test','The Great Escape','The Guiding Light','The Last Emperor','The Son Also Rises','Transitions','Werther','Whats Up, Doc?','Where Theres a Will...'))
