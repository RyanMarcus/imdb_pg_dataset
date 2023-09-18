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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Australia:PG','Finland:K-16','Germany:12','Iceland:L','Italy:VM18','Norway:16','UK:12','UK:A','USA:PG','USA:R','USA:TV-PG'))
AND (mi2.info IN ('Argentina','Austria','Belgium','Canada','Finland','France','Hong Kong','India','Japan','Soviet Union','Sweden'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','composer','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.19)','(#1.30)','(#1.55)','(#4.24)','(#6.22)','Any Number Can Play','Arsenic and Old Lace','Bedtime Story','Border Incident','Caesars Wife','Dr. Jekyll and Mr. Hyde','Half a Sixpence','Her Highness and the Bellboy','Invasion','König Drosselbart','Made for Each Other','Mrs. Miniver','Obsession','On Trial','Sanctuary','Some Like It Hot','TV-Avisen','The Adventures of Huckleberry Finn','The Canterville Ghost','The Great Ziegfeld','The Magic Box','The Morning After','The Professionals','The Rainmaker','The Road Back','Windfall'))
