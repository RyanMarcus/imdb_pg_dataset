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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','Mono','Silent','Stereo'))
AND (mi2.info IN ('Canada','Czechoslovakia','Denmark','East Germany','France','India','Portugal','Romania','Soviet Union','Spain'))
AND (kt.kind in ('movie','video game','video movie'))
AND (rt.role in ('actor','cinematographer','director','producer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.53)','(#1.69)','(#1.9)','(#2.44)','(#3.29)','(#4.24)','(#6.4)','(#7.6)','A Time to Die','Boomerang','Collectors Item','Counter-Attack','Die Ratten','End of the Road','Game 6','Gunfight at the O.K. Corral','It Happened in Hollywood','It Started with Eve','Le fantôme de la liberté','Lost','Madame Bovary','Mrs. Wiggs of the Cabbage Patch','Part 1','Pinocchio','Rembrandt','Richard II Part 2: The Deposing of a King','Seven Sinners','Sherlock Holmes','Son of Sinbad','Stage Door','Stakeout','Sun Valley Serenade','Survival','The Accused','The Adventures of Huckleberry Finn','The Boss','The Crucible','The Grapes of Wrath','The Man Who Came Back','The Rebel','The Reckoning','The Secret','The Silent Witness','Tommy','Unusual Occupations','Wake Island','Watch the Birdie','Wells Fargo'))
