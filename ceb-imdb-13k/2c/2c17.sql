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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Belgium','Colombia','Germany','Indonesia','Malaysia','Mexico','Serbia','South Korea'))
AND (mi2.info IN ('CAM:Arri Alexa','CAM:Arriflex Cameras and Lenses','CAM:Canon XL-1','LAB:DeLuxe, Hollywood (CA), USA','LAB:DeLuxe, USA','LAB:Laboratoires Éclair, Paris, France','LAB:Synchro Film, Austria','LAB:Technicolor','PCS:(anamorphic)','PCS:Super 35','RAT:1.37 : 1','RAT:1.78 : 1 / (anamorphic)','RAT:1.85 : 1'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actress','composer','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.306)','(#1.5103)','(#1.5285)','(#1.6055)','(#18.38)','(#3.210)','(#6.16)','(2001-03-27)','(2010-05-07)','(2012-08-25)','2000 Blockbuster Entertainment Awards','BET Awards 2012','Bedazzled','Biggel and Pamu Do Their Best to Finish Their Big Challenge','Brando','Brothers Little Helper','Façade','Four Nerds and a Bird','Friends Without Benefits','Goodbye Paradise','Im Still Here','Jericho','Little Things','Look How Far Weve Come','Look Whos Stalking','Love Lies Bleeding','Pasión','Picture Bride','Playhouse','Primary Colors','Rubber Room','SIS','Señales','Shock','Sons of Liberty','Strip Poker','Studio','Taiho shichauzo','The Journal','The Libertine','The Squeeze','The Taming of the Shrew','Wall to Wall Fashion','When the Cats Away'))
