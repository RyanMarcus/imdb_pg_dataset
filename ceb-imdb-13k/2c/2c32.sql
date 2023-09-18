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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('One of over 700 Paramount Productions, filmed between 1929 and 1949, which were sold to MCA/Universal in 1958 for television distribution, and have been owned and controlled by Universal ever since.'))
AND (mi2.info IN ('Australia','France','Germany','Italy','Japan','UK','USA','West Germany'))
AND (kt.kind in ('episode','movie','tv series','video movie'))
AND (rt.role in ('actor','director','editor'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.106)','(#1.71)','(#3.39)','(#4.20)','(#4.31)','(#4.34)','A Family Affair','Anthony Adverse','Antony and Cleopatra','Calamity Jane','Confession','Dobrý voják Svejk','Don Juan','Double Date','Fanny','Fünfter Teil','Gunfire','King of Burlesque','Labyrinth','Little Boy Lost','Love Letters','Macbeth','Maya Bazaar','Mind Your Own Business','Montserrat','Peer Gynt','Reap the Wild Wind','Renegades','Rio Grande','Strange Cargo','Svadba','Tartuffe','Terror','The Accused','The Golden Fleece','The Greatest Story Ever Told','The Ladies Man','The Return'))
