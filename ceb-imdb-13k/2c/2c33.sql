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
AND (mi2.info IN ('Argentina:13','Argentina:16','Finland:S','Germany:12','Iceland:16','Sweden:11','Sweden:Btl','UK:15','UK:PG','UK:U','USA:Approved','USA:G','USA:R','USA:TV-PG','West Germany:6'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actor','composer','producer','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.123)','(#1.78)','(#2.36)','(#8.10)','A Matter of Honor','All Star Comedy Carnival','Austerlitz','Born to Sing','Down on the Farm','Gilda','Giuseppe Verdi','Justice','Knock on Any Door','Million Dollar Mermaid','Money to Burn','Never a Dull Moment','Pack Up Your Troubles','Second Chance','Seven Sinners','Skin Deep','Some Like It Hot','South Pacific','Storm Warning','The Day the Earth Stood Still','The Gangs All Here','The Intruder','The Lemon Drop Kid','The Lone Ranger Rides Again','The Matchmakers','The Ten Commandments','The Visitors','The Winner','Unser Sandmännchen','When We Are Married'))
