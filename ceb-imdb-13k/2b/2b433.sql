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
AND (it1.id in ('18'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('London, England, UK','Los Angeles, California, USA','New York City, New York, USA'))
AND (mi2.info in ('Australia:M','Germany:16','Iceland:16','Netherlands:12','Netherlands:16','Portugal:M/12','UK:15','USA:Not Rated','USA:TV-14'))
AND (kt.kind in ('movie','video movie'))
AND (rt.role in ('director','writer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('bowser','dropping-anchor','limelight','olympic-committee','reference-to-niels-bohr','roach-clip','spirit-sound-activity','woman-punches-man'))
