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
AND (it1.id in ('3'))
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Action','Adult','Crime','Family','Fantasy','Film-Noir','History','Mystery','News','Romance','Short','Talk-Show','Thriller','War'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','cinematographer','editor','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.2)','(#2.29)','(#4.6)','(#5.16)','(#5.18)','A Child Is Born','A Guy Named Joe','A Place in the Sun','A-Haunting We Will Go','Arsenic and Old Lace','Brigadoon','Brother Can You Spare a Dime','Das verurteilte Dorf','Deception','Explosion','Fair Exchange','Florian','Ghost Catchers','Hollywood Hotel','I promessi sposi','Jet Pilot','Kidnapped','Lawrence of Arabia','Le capitaine Fracasse','Lenny','Many Happy Returns','Marie Antoinette','Moulin Rouge','Napoléon','Notorious','Opening Night','Putney Swope','Ruggles of Red Gap','Ryans Hope','Springtime in the Rockies','Success Story','Summer Holiday','The Deserter','The Gamblers','The Great Race','The Hard Way','The Helen Morgan Story','The Kid','The Man Who Came to Dinner','The Shadow','The Victim','The Way of All Flesh','The Witness','Togetherness','Triple Cross'))
