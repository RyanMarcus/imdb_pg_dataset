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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Argentina','Austria','Brazil','Chile','Denmark','Estonia','Georgia','Israel','Pakistan','Romania','USA'))
AND (kt.kind in ('episode','movie','tv series','video movie'))
AND (rt.role in ('producer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.1140)','(#1.5535)','(#11.13)','(#3.21)','(#8.159)','(1999-03-17)','(2001-12-28)','(2006-05-18)','(2006-08-07)','(2009-12-10)','(2013-01-15)','(2013-04-30)','Alone in a Crowd','Annie Hall','Atlantic City','Black & White','Blitz','City on Fire','Cold-Blooded','Der falsche Mann','Dirty Tricks','Elvis Has Left the Building','Happiness Runs','Jackpot','Man Outside','Manifest Destiny','On Guard','Rampart','Secret Societies','Soul Food','The Draft','The Rainbow Warrior','Valiant','What Happens Next','Without Limits','Word of Honor','Zero Tolerance','Über den Wolken'))
