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
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Comedy','Family','Film-Noir','Sci-Fi','Talk-Show','Western'))
AND (mi2.info IN ('Cinecittà Studios, Cinecittà, Rome, Lazio, Italy','Los Angeles, California, USA','Manhattan, New York City, New York, USA','Munich, Bavaria, Germany','San Francisco, California, USA'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('editor'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.390)','(#1.428)','(#1.81)','(#1.845)','(#3.5)','Baby','Blackjack','Body Language','Brutal Glory','Field of Dreams','Gotta Dance','Hearts and Minds','Jackpot','Jauche und Levkojen','Key Exchange','Lola','Mistaken Identity','Picking Up the Pieces','Sins of the Father','The Hunt for Red October','The Root of All Evil','The Shooting','Touch and Go','Vera - Der schwere Weg der Erkenntnis','Victory','Visitors'))
