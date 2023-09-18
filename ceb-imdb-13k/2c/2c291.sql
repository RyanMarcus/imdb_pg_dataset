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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Australia:G','Australia:PG','Germany:12','USA:Approved','USA:X','West Germany:12','West Germany:18'))
AND (kt.kind in ('tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','actress','production designer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.27)','(#1.83)','Anna Christie','Artists and Models','Blockade','Brotherly Love','Chucho el Roto','Clive of India','Detective Story','If You Knew Susie','Jugovizija','Kabale und Liebe','Ladies Man','Of Human Bondage','One in a Million','Play School','Playmates','Quarta puntata','Spartacus','Stormy Weather','The Avengers','The Big Show','The Blue Knight','The Debt','The Devil Is Driving','The Kid','The Mikado','The Rescue','The Tell-Tale Heart','Vice Versa'))
