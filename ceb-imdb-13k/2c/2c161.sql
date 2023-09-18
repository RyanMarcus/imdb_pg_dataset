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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Last show of the series.','One of over 700 Paramount Productions, filmed between 1929 and 1949, which were sold to MCA/Universal in 1958 for television distribution, and have been owned and controlled by Universal ever since.'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','Dolby Digital','Mono','Stereo'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('cinematographer','composer','guest','miscellaneous crew','production designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.126)','(#1.43)','(#2.16)','(#2.24)','(#2.36)','(#4.6)','(#5.13)','(#5.28)','(#6.14)','A Life of Her Own','A-Haunting We Will Go','Beatrice Cenci','Breakout','Carry on Cowboy','Devdas','Dixie','Föltámadott a tenger','Gentlemen Prefer Blondes','Holnap lesz fácán','Hurricane','Maytime','Mission to Moscow','Schneider Wibbel','Shichinin no samurai','The Actress','The Cats-Paw','The Challenge','The Execution','The Gold Rush','The Innocent','The Lost Weekend','The Masked Marvel','The Pit','The Ringer','The Swordsman','Thicker Than Water','This Is the Army','Wake Island','World of Sport'))
