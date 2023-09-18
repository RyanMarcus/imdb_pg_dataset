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
AND (it1.id in ('4'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Arabic','Dutch','English','French','German','Hindi','Japanese','Latin','Mandarin','Portuguese','Russian','Spanish','Swedish','Telugu'))
AND (mi2.info IN ('Australia:G','Belgium:KT','Finland:(Banned)','Finland:K-8','Germany:16','Netherlands:18','Norway:16','Sweden:15','UK:15','USA:G','USA:Passed','USA:R','USA:TV-G','West Germany:18'))
AND (kt.kind in ('movie','tv series'))
AND (rt.role in ('costume designer','director','production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.27)','(#1.94)','(#2.15)','(#2.25)','(#6.12)','(#7.9)','Act of Violence','Charleys Tante','Contraband','Dakota','Dick Tracys G-Men','Divide and Conquer','Fiesta','Force of Evil','Hello, Dolly!','Knute Rockne All American','Los miserables','Paid in Full','Ransom','Running Wild','Sarajevski atentat','Swing Fever','The Big Shot','The Execution','The Exile','The Fugitives','The Raven','The Star Maker','The Survivor'))
