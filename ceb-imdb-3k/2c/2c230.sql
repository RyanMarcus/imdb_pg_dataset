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
AND (it1.id in ('7'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:Technicolor, USA','MET:','MET:500 m','MET:600 m','OFM:16 mm','OFM:35 mm','OFM:Live','PCS:Kinescope','PCS:Shawscope','PFM:35 mm','PFM:70 mm','RAT:1.33 : 1','RAT:1.37 : 1','RAT:2.35 : 1'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','Mono','Silent','Stereo'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('director','editor','miscellaneous crew','production designer','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.101)','(#1.114)','(#1.54)','(#1.66)','(#1.88)','(#2.36)','(#2.4)','(#3.16)','(#3.25)','(#5.19)','All My Children','Duffys Tavern','Game 2','Gold','Hear No Evil','Holnap lesz fácán','Homecoming','Honeymoon','Les mystères de Paris','Marooned','Moral','Rebellion','Richard II Part 2: The Deposing of a King','Sans famille','Shell Game','Song of Russia','Summer Holiday','Teresa','The Challenge','The Enchanted','The Human Comedy','The Promised Land','The Sniper','The Visit','War Games','Yellow Jack'))
