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
AND (it1.id in ('4'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Bengali','Bulgarian','Cantonese','Czech','Dutch','English','French','German','Greek','Hindi','Mandarin','Portuguese','Swedish','Tagalog'))
AND (mi2.info IN ('4-Track Stereo','Mono','Silent','Stereo'))
AND (kt.kind in ('episode','movie','tv series'))
AND (rt.role in ('director','miscellaneous crew','production designer','writer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.47)','(#1.48)','(#2.35)','(#3.29)','(#5.21)','A Night at the Opera','Barbary Coast','Border Incident','Chucho el Roto','Crack-Up','David Copperfield','Escapade','Flight','Geronimo','Gunfight at the O.K. Corral','Harlow','Hello, Dolly!','Hunt the Man Down','It Started with Eve','Jailhouse Rock','Jam Session','Life with Father','Raffles','Saboteur','Springtime in the Rockies','The Awful Truth','The Cardinal','The Condemned','The Elopement','The Facts of Life','The Guest','The Guiding Light','The Hard Way','The Imposter','The Raiders','The Scavengers','They Died with Their Boots On','They Were Expendable','Thomas Müntzer','Windfall'))
