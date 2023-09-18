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
AND (mi1.info IN ('102','105','22','50','87','90','93','99','USA:100','USA:30','USA:60'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','Mono','Stereo'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.107)','(#1.16)','(#1.36)','(#1.475)','(#1.595)','(#1.60)','(#1.725)','(#3.32)','(#8.19)','A House Divided','Backfire','Bon Voyage','Chicago Bears vs. Minnesota Vikings','Dansk melodi grand prix','Das Vermächtnis','Dead End City','Ein Kapitel für sich','Ein Sommernachtstraum','Fandango','Hanussen','Letting Go','Lover Boy','Madeleine','Men of Respect','Mind Your Own Business','Pacific Heights','Part 2','Running on Empty','Search and Destroy','Soledad','Starting Over','The Actor','The Call','The Contract','The Divorce','The Elopement','The Howling','Under the Rainbow','Wedding'))
