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
AND (it1.id in ('18'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Acapulco, Guerrero, Mexico','Bavaria Filmstudios, Geiselgasteig, Grünwald, Bavaria, Germany','Big Bear Lake, Big Bear Valley, San Bernardino National Forest, California, USA','Cinecittà Studios, Cinecittà, Rome, Lazio, Italy','Hollywood, Los Angeles, California, USA','Mexico City, Distrito Federal, Mexico','Mexico','New York City, New York, USA','Philippines','San Francisco, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (mi2.info IN ('Adventure','Biography','Comedy','Crime','Documentary','Drama','Family','Fantasy','Film-Noir','History','Music','Musical','Mystery','Western'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.6)','(#3.39)','(#6.19)','12','Ada','Altri tempi','Austerlitz','Call Me Mister','Charleys Tante','Chûshingura','Deadlock','Dick Tracys G-Men','Jailhouse Rock','Marooned','Miracle on 34th Street','Never a Dull Moment','Pension Schöller','Ransom','Reunion in France','Since You Went Away','The Challenge','The Hospital','The Legacy','The Male Animal','United!','Whats in a Name?','Wyoming'))
