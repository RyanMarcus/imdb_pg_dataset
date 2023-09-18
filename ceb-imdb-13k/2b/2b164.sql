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
AND (it1.id in ('3'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Action','Adult','Documentary','Drama'))
AND (mi2.info in ('Austria','Italy','Sweden','UK'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('cinematographer','producer'))
AND (n.gender in ('m') OR n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('break-even','christmas-ball','dead-boy','high-iq','horace-tapscott','land-theft','man-with-no-pants','menominie-wisconsin','mystical-vision','power-door-lock','robin-hood-spoof','sex-on-plane','silver-plated-tooth','snowy-owl','social-ministry','swim-therapy','third-grade-teacher','woman-in-coffin'))
