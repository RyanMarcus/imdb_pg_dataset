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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Argentina:16','Australia:MA','Australia:R','Germany:18','Hong Kong:IIB','New Zealand:M','Norway:18','UK:15','USA:G'))
AND (mi2.info in ('English'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('miscellaneous crew'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('anthropomorphic-water','attempted-suicide','bad-friend','bed-hopping','clairvoyant','copulating-wax-people','henk-schiffmacher','lame-woman','listening-to-ones-heartbeat','marginalized','motorcycle-chase','neglected-children','premenstrual-tension','primary','prison-sex','reference-to-brenda-frazier','reference-to-peter-faberge','two-engine-p30-lightning-fighter-plane','wet-sports','working-in-the-nude','x-files','year-1500'))
