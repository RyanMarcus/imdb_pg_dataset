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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Australia','Denmark','Finland','Soviet Union','USA','West Germany'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('movie','tv movie','tv series','video movie'))
AND (rt.role in ('cinematographer','composer','editor','miscellaneous crew','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.61)','(#3.4)','(#4.17)','(#4.29)','(#8.5)','12','2001: A Space Odyssey','A Shot in the Dark','Anna Christie','Anniversary','Assignment in Brittany','Bad Guy','Barabba','Boy Meets Girl','Dark Victory','Dead or Alive','Dick Tracys G-Men','Familie Benthin','Foreign Correspondent','Haunted House','Ill Tell the World','King of the Mountain','Kismet','M','Olympia 1. Teil - Fest der Völker','Sarajevski atentat','Something for the Birds','The Auction','The Cat and the Fiddle','The Dream','The Gypsies','The Harder They Fall','The Hound of the Baskervilles','The Morning After','The Payoff','The Princess','The Professionals','The Rainmaker','The Whole Truth','They Drive by Night','This Land Is Mine','Three Kids and a Queen','Titanic','Welcome Home','Windfall','Winner Take All'))
