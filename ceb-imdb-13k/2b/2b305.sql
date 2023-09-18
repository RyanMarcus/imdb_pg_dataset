SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n,
movie_keyword as mk,
keyword as k
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('5'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Argentina:13','Canada:14A','Germany:16','Iceland:16','Iceland:L','Netherlands:12','Singapore:PG','Sweden:15','UK:18','USA:G','USA:PG','USA:PG-13'))
AND (mi2.info in ('Dolby Digital','Dolby','Mono','SDDS','Stereo'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('actor','producer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('american-history','cleveland-playhouse','d.h.-lawrence','dinosaur-hunting','electioneering','imperial-seal','m.i.t.','overdue-rent','psychotropic','reference-to-hellboy','rules-of-profession','senate-confirmation-hearing','wallboard','will-to-power'))
