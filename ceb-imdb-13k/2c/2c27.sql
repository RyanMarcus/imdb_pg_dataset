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
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:13','Australia:M','Canada:18+','Chile:18','Netherlands:12','Netherlands:6','Norway:15','Philippines:R-18','Portugal:M/12','UK:PG','USA:G'))
AND (mi2.info IN ('Almería, Andalucía, Spain','Chicago, Illinois, USA','Hamburg, Germany','Iverson Ranch - 1 Iverson Lane, Chatsworth, Los Angeles, California, USA','Madrid, Spain','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Munich, Bavaria, Germany','Paris, France','Sydney, New South Wales, Australia','Twickenham Film Studios, St Margarets, Twickenham, Middlesex, England, UK','UK'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('director','miscellaneous crew','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.140)','(#1.2)','(#1.227)','(#1.546)','(#1.661)','(#1.968)','(#3.2)','(#5.10)','(#7.8)','A Day in the Life','A Night of Comic Relief 2','Baby Love','Bakafácán','Bedtime Story','Bokser','Collision Course','David Copperfield','Iceman','La Gioconda','Lola','On the Road','Pelle erobreren','Picking Up the Pieces','Schönes Wochenende','Shag','Sniper','Squeeze Play','Stand Up and Be Counted','Surprise Party','That Old Gang of Mine','The Choice','The Equalizer','The Experts','The Loser','The Prisoner of Zenda','The Promotion','The Soldier','The Tycoon','Treasure','Voyna i mir','WWF Superstars of Wrestling'))
