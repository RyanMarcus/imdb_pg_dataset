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
AND (it1.id in ('1'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('13','25','35','80','82','89','9','94','USA:20'))
AND (mi2.info IN ('Adult','Documentary','Drama','Musical','War','Western'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('composer','guest','production designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.17)','(#1.89)','(#1.94)','(#5.26)','A Midsummer Nights Dream','Aida','Aint Misbehavin','Anniversary','Aoi sanmyaku','Carnival','Der Meineidbauer','Follow the Boys','Ghost Catchers','Impact','Law and Order','Neighbors','No Escape','Partners','Possessed','The City','The Girl of the Golden West','The Green Hornet','The Gun Runners','The Helen Morgan Story','The Human Jungle','The Hunchback of Notre Dame','The Informer','The Kid from Texas','The Man Who Broke the Bank at Monte Carlo','The Merchant of Venice','The Phantom Rider','The Prowler','The Test','The Walls of Jericho','The Woman in White','Ultimatum','Union Pacific','Unter Ausschluß der Öffentlichkeit'))
