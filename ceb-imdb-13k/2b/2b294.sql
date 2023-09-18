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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Australia:G','Belgium:KT','Finland:K-16','Finland:S','India:U','Sweden:15','UK:A','UK:PG','UK:U','USA:Passed','USA:X'))
AND (mi2.info in ('Belgium','France','India','Italy','UK','USA'))
AND (kt.kind in ('movie','tv movie'))
AND (rt.role in ('actor','actress'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('bajo-fondo-tango-club','brady-bunch-spoof','burn-blister','cat-worshipper','child-translates-for-adult','church-mouse','combine-the-machine','command-of-the-sea','dancing-on-a-coffin','frog-toy','glass-bottomed-limousine','kew-gardens-london','legal-issue','new-age-music','nude-statue','parallel-economy','photography-studio','public-strike','reference-to-cliff-huxtable','residence-meeting','south-ossetia','swimming-coach','torso-slashed-open'))
