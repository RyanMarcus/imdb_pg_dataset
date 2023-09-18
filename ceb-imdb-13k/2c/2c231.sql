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
AND (it1.id in ('6'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Chronophone','Cinephone','De Forest Phonofilm','Dolby Digital','Mono','Perspecta Stereo','Silent','Stereo','Vitaphone'))
AND (mi2.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','MET:','MET:600 m','PCS:Kinescope','PCS:Techniscope','RAT:1.20 : 1'))
AND (kt.kind in ('movie','tv movie','tv series','video game'))
AND (rt.role in ('director','miscellaneous crew','production designer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.79)','(#2.33)','(#3.27)','(#3.7)','(#4.17)','(#4.26)','(#5.21)','(#6.14)','A Tale of Two Cities','Adventure','Aida','Angel','Blind Mans Bluff','Casablanca','Earthquake','Easy Come, Easy Go','Fall Guy','Fantômas','Flying Down to Rio','Golden Girl','Huckleberry Finn','Like Father, Like Son','Line of Fire','Maria','Marry Me','Miyamoto Musashi','Othello','Pack Up Your Troubles','Rich Man, Poor Man','Rip Van Winkle','Shadows','Sherlock Holmes','The Actress','The Connection','The Executioners','The Fanatics','The French Line','The Gypsies','The Politician','The Red Shoes','The Tiger','They Drive by Night','Two of a Kind','Woman to Woman'))
