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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Adult','Fantasy','Game-Show','Horror','Musical'))
AND (mi2.info IN ('CAM:Panaflex Camera and Lenses by Panavision','LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:DeLuxe','LAB:Film Center, Mumbai, India','LAB:Movielab, USA','LAB:Rank Film Laboratories, Denham, UK','OFM:16 mm','PCS:Panavision','PCS:Tohoscope','PFM:16 mm','PFM:Video','RAT:1.33 : 1','RAT:1.78 : 1','RAT:4:3'))
AND (kt.kind in ('movie','tv movie','video game','video movie'))
AND (rt.role in ('miscellaneous crew'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.301)','(#1.51)','(#3.16)','(#8.22)','A Change of Heart','Arrival','Atlanta Falcons vs. Philadelphia Eagles','Big Business','Cant Stop the Music','Fun House','La traviata','Life of Brian','Please Believe Me','The 34th Annual Emmy Awards','The Appointment','The Bachelor Party','The Big Parade of Comedy','The Love God?','The Outsiders','The Ratings Game','The Shower','To Catch a Thief','Witch Hunt'))
