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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Biography','Crime','Drama','Fantasy','Game-Show','Horror','War'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','composer','director','editor','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.114)','(#1.91)','(#1.93)','(#5.21)','Confession','Daddy Long Legs','Delayed Action','Der Hauptmann von Köpenick','Die Fledermaus','Dilemma','Down on the Farm','Escapade','Finale','Haunted House','Key to the City','Like Father, Like Son','Lilith','One Sunday Afternoon','Retribution','Ricochet','Scene of the Crime','Sea Devils','The Frame-Up','The Great Gatsby','The Light That Failed','The Mask','The Mighty Barnum','The Plainsman','The Prisoner','The Replacement','The Sacrifice','Titanic','Uncle Toms Cabin'))
