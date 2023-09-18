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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Cuba','East Germany','Greece','Hungary','Iran','Italy','Nigeria','Peru','South Africa'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('cinematographer','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.269)','(#1.5491)','(#27.4)','(#3.16)','(#8.86)','(1999-08-04)','(2002-02-21)','(2006-08-22)','(2009-06-19)','(2011-02-09)','Acid Rain','Ah, Wilderness!','Anger Management','Cinema Suites: Long Beach, CA','Deus Ex','Different','Divination','Fuenteovejuna','Hudson Hawk','Larry the Cable Guys Hula-Palooza Christmas Luau','Les deux orphelines','Little Black Dress','Live Show','Love Is Not Enough','Near Death Experience','One Last Shot','Retaliation','The 56th Annual Primetime Emmy Awards','The Jigsaw Man','The Ladder','The Lighthorsemen','The Outlaw'))
