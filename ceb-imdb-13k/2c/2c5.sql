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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Australia:R','France:U','India:U','South Korea:15','Sweden:Btl','UK:A','USA:TV-G'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','director','producer','production designer','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.103)','(#1.194)','(#1.303)','(#1.389)','(#1.598)','(#2.11)','Back to the Future Part II','Bound for Glory','Cover Girl','Daniel','Doctor Ducks Super Secret All-Purpose Sauce','Domino','Eternity','Hobsons Choice','Lily Tomlin','Mad Max Beyond Thunderdome','New Faces','Once Bitten','Prizzis Honor','Room at the Top','Star Wars','The Comedy of Errors','The Crush','The Naked and the Dead','The Newlywed Game','The Silent Partner','The Spoilers','The Wind of Change','Turning Point','Wedding','Winner Take All'))
