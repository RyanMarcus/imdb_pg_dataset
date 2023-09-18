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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Arabic','English','Hindi','Hungarian','Korean','Mandarin','Tagalog','Telugu'))
AND (kt.kind in ('tv series','video game','video movie'))
AND (rt.role in ('actress','editor','guest'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.109)','(#1.44)','(#1.89)','(#2.4)','(#2.43)','(#5.4)','(#7.5)','Bobby','Brief Encounter','Erster Teil','King Lear','Legacy','Life with Father','Mr. District Attorney','Obsession','Seishun to wa nanda','She Gets Her Man','Sister Kenny','Sweet Charity','The Big Show','The Hospital','The Matchmaker','The Perils of Pauline','The Turning Point','Way Out West','With a Song in My Heart'))
