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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Belgium','China','Czech Republic','Estonia','Finland','Iceland','Malaysia','Netherlands','New Zealand','Philippines','Portugal','South Africa','Thailand','Venezuela'))
AND (kt.kind in ('episode','tv movie','tv series','video game'))
AND (rt.role in ('actor','actress','cinematographer','composer','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.339)','(#1.5595)','(#1.5636)','(#1.782)','(#14.22)','(2003-04-11)','2009 MTV Movie Awards','A Commercial with Taste','Creepshow III','De prijs','Hair Show','Herzlichen Glückwunsch','Justin & Tyler','Marisol','Mit dem Rücken zur Wand','Outrageous Outlaws','Rabbids Go Home','Runaway Bride','Summer Love','The Emperors New Groove','The Final Payoff','The Reporter','User Friendly','War Stories','Weekend'))
