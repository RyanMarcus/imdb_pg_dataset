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
AND (it1.id in ('17'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Last show of the series.','One of over 700 Paramount Productions, filmed between 1929 and 1949, which were sold to MCA/Universal in 1958 for television distribution, and have been owned and controlled by Universal ever since.','Original French title is undetermined.'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('movie','tv movie','tv series'))
AND (rt.role in ('composer','costume designer','editor','producer','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.101)','(#1.63)','(#1.65)','(#2.4)','(#4.35)','(#5.1)','An American in Paris','Casanova','Flying Down to Rio','Manpower','Maridinho de Luxo','Mrs. Parkington','No Escape','Scandal Sheet','Search for Tomorrow','See No Evil','She','Snow Job','Thats the Spirit','The Final Test','The Great Caruso','The Silver Chalice'))
