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
AND (it1.id in ('8'))
AND (it2.id in ('17'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Australia','Canada','Germany','Italy','Japan','Philippines','Soviet Union','Spain','UK','USA','West Germany'))
AND (mi2.info IN ('One of over 700 Paramount Productions, filmed between 1929 and 1949, which were sold to MCA/Universal in 1958 for television distribution, and have been owned and controlled by Universal ever since.'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','costume designer','producer','production designer','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.116)','(#1.6)','(#3.32)','(#5.13)','(#5.27)','(#8.13)','A Cry for Help','A Friend in Need','A Shot in the Dark','Amok','Antony and Cleopatra','Boomerang','Broadway Bill','Crossfire','Dritter Teil','Du Barry Was a Lady','Ill Tell the World','It Happened One Night','Jailhouse Rock','Kitty Foyle','Mutiny','Night Club','Of Human Bondage','Only Yesterday','Rhubarb','The Executioner','The Haunted House','The Kid from Brooklyn','The Kill','The Red Shoes','The Storm','The Tunnel','The Widow','Till We Meet Again','Till the Clouds Roll By','Ultimatum','Unter Ausschluß der Öffentlichkeit','You Came Along'))
