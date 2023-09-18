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
AND (it1.id in ('16'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Finland:1989','France:September 2001','Germany:February 2004','Germany:February 2005','Peru:1987','Peru:1988','Portugal:February 1990'))
AND (mi2.info IN ('Australia:PG','Canada:PG','Germany:BPjM Restricted','Iceland:16','Ireland:18','Ireland:G','Japan:G','Mexico:C','Netherlands:18','Norway:12','Singapore:(Banned)','UK:U','West Germany:18','West Germany:6','West Germany:o.Al.'))
AND (kt.kind in ('tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','costume designer','miscellaneous crew','writer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
