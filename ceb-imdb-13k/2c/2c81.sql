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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Czech','Danish','Estonian','Finnish','Greek','Hebrew','Polish','Tamil'))
AND (mi2.info IN ('Action','Adult','Adventure','Crime','Documentary','Fantasy','History','Music','Sci-Fi'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('actor','costume designer','miscellaneous crew','producer','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.274)','(#1.326)','(#1.364)','(#1.80)','(#1.970)','(#10.7)','(#4.18)','(#6.2)','A Change of Heart','All of Me','Amanece, que no es poco','Babe','Billy the Kid','Childhoods End','Code of Silence','Daddy Dearest','Downtown','Dyesebel','Friends and Enemies','Full Circle','Game 4','Iris','Kabale und Liebe','Noblesse Oblige','Palace','Pepe','Say Yes','Solar Crisis','Some Like It Hot','Strangers in Paradise','The Border','The Champ','The Garden','The Loser','The Phoenix','The Skin Game','To Tell the Truth','Twilight Zone: The Movie','Vodkaa, komisario Palmu','Zatôichi'))
