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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Mono','Silent','Stereo'))
AND (kt.kind in ('tv movie','tv series'))
AND (rt.role in ('actor','cinematographer','director','guest','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.125)','(#1.82)','(#4.17)','(#4.31)','(#6.11)','(#6.15)','(#7.15)','A Canterbury Tale','A Farewell to Arms','A Life of Her Own','An American in Paris','Beauty and the Beast','Die Ratten','Hurricane','Killer McCoy','Les mystères de Paris','Maya','Meet John Doe','Mrs. Parkington','One Good Turn','San Quentin','Secret Agent X-9','Small Town Girl','Smart Woman','Storm Warning','Tennessee Johnson','The Barretts of Wimpole Street','The Daring Young Man','The Dream','The Frame-Up','The Great Caruso','The Roaring Twenties','The Three Musketeers','The Whole Towns Talking','Up Front','Vengeance'))
