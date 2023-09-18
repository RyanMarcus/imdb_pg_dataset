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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Bulgarian','Cantonese','English','Filipino','German','Greek','Hungarian','Japanese','Mandarin','Persian','Romanian','Russian','Telugu','Urdu'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','actress','costume designer','production designer','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.113)','(#1.61)','(#1.73)','(#2.6)','(#4.11)','(#7.17)','Ambush','Barabba','Broadway','Caravan','Casanova Brown','Circumstantial Evidence','Collectors Item','Die Entscheidung','Dirty Harry','Divide and Conquer','Dixie','Fear','Flash Gordon','Forever Amber','Jesse James','Jet Pilot','Marriage','On Trial','Ricochet','Scapegoat','Singin in the Rain','Suspicion','The Box','The Choice','The Executioners','The Hypnotist','The Last Hurrah','The Masterpiece','The Merry Widow','The Prince and the Pauper','The Raiders','The Sisters','The Wedding','The Westerner','The Whole Truth','They Died with Their Boots On','Words and Music','Wuthering Heights'))
