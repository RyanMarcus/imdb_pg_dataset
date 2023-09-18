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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Adult','Animation','Documentary','Family','History','Horror','Romance','War','Western'))
AND (mi2.info IN ('LAB:Movielab, USA','LAB:Rank Film Laboratories, Denham, UK','PCS:Panavision','PCS:Spherical','PCS:Tohoscope','PFM:16 mm','PFM:35 mm'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('cinematographer','editor','miscellaneous crew','producer','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.261)','(#1.269)','(#1.316)','(#1.541)','(#1.665)','(#10.13)','(#11.11)','A Hard Days Night','Assault','Asylum','Bedtime Story','Claws','Coriolanus','Deadlock','Epidemic','Higher Education','Insaaf','Journeys End','Marusa no onna 2','My Left Foot: The Story of Christy Brown','Old Acquaintance','One of a Kind','Pandoras Box','Poker','Thank God Its Friday','The Big Easy','The Kiss','The Rival','The Sunshine Boys','Troop Beverly Hills','Young Love'))
