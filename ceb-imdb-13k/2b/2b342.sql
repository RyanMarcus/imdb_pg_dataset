SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n,
movie_keyword as mk,
keyword as k
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('8'))
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Germany','UK','USA'))
AND (mi2.info in ('100','17','21','30','6','83','93','Germany:24','UK:60','USA:120','USA:16','USA:20','USA:3','USA:60'))
AND (kt.kind in ('tv movie','video game'))
AND (rt.role in ('writer'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('chewing','coffin','folk-singing-group','futon','gardelegen','heart-and-soul','hidden-treasure','jeans-shop','kicked-through-a-window','operation-frankton','philippines-liberation','reference-to-breakfast-at-tiffanys-the-novel','reference-to-luther-vandross','reference-to-will-rogers','roadside-stand','royal-courtier','sex-between-old-couple','shredding-machine'))
