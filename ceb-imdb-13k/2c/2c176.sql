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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('105','15','25','62','68','74','81','99','USA:10'))
AND (mi2.info IN ('4-Track Stereo','Mono','Silent','Stereo'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('editor','production designer','writer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.48)','(#2.16)','(#2.2)','(#2.38)','(#4.4)','(#6.4)','(#8.6)','Above Suspicion','Above and Beyond','Altri tempi','Ambush','Behind the Mask','Chucho el Roto','Clash by Night','Double Jeopardy','El verdugo','Election 74','Fall Guy','Hell and High Water','Hollywood Hotel','House of Strangers','Impasse','Just My Luck','North West Mounted Police','Ride Em Cowboy','Second Honeymoon','Shine on Harvest Moon','South Pacific','Spartacus','The Bounty Hunter','The Countess','The Great Ziegfeld','The Gunman','The Jackpot','The Roaring Twenties','This Is the Army','This Land Is Mine','Tonka'))
