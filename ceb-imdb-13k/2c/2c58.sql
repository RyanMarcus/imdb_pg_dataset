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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Dolby Digital','Mono','Silent','Stereo'))
AND (mi2.info IN ('Argentina:16','Canada:G','Finland:K-12','Finland:S','Germany:12','Germany:16','Iceland:L','Netherlands:AL','USA:Approved','USA:G','USA:R','West Germany:18'))
AND (kt.kind in ('episode','movie','tv movie','video game'))
AND (rt.role in ('actor','cinematographer','composer','guest','miscellaneous crew'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.12)','(#1.17)','(#1.69)','(#3.3)','(#3.38)','(#4.33)','Bells Are Ringing','Camille','Crime Wave','Dilemma','Emilia Galotti','Everybody Does It','Executive Action','Hunt the Man Down','Keep Smiling','Le capitaine Fracasse','Les misérables','Marriage','Million Dollar Mermaid','My Favorite Spy','My Gal Sal','Off Limits','Over the Wall','Raffles','Sechster Teil','Shoot to Kill','Show Business','Something to Live For','The Decision','The Dream','The Lone Ranger Rides Again','The Love Bug','The Miracle','The Patriot','The Promise','The Rainmakers','The Razors Edge','The Substitute','The Teacher','The War of the Worlds','Troubled Waters','Unter Ausschluß der Öffentlichkeit'))
