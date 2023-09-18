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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Brazil:Livre','Canada:13+','Canada:G','Italy:VM14','Netherlands:16','New Zealand:R16','Peru:14','Portugal:M/18','Singapore:PG','Spain:18','West Germany:18','West Germany:6'))
AND (mi2.info IN ('Arabic','Cantonese','Dutch','English','Finnish','French','German','Hindi','Mandarin','Norwegian','Polish','Portuguese','Spanish','Swedish','Telugu'))
AND (kt.kind in ('episode','movie','video game'))
AND (rt.role in ('cinematographer','composer','costume designer','director','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.321)','(#1.327)','(#1.339)','(#1.452)','(#1.610)','(#1.732)','(#2.16)','Avalon','Fun House','High Tide','Hollywood My Home Town','Men of Respect','Old Flames','Prima puntata','Seishun to wa nanda','Stone','Suspicion','The Actor','The Apprentice','The Day the Earth Stood Still','The Decision','The Man from Snowy River II','The Runaway','The Street','The Wind of Change'))
