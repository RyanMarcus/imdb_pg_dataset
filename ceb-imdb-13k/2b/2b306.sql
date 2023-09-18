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
AND (it1.id in ('6'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('4-Track Stereo','DTS','Dolby Digital','Dolby','Mono','Stereo','Ultra Stereo'))
AND (mi2.info in ('Dutch','English','French','German','Hindi','Italian','Japanese','Portuguese','Russian','Swedish'))
AND (kt.kind in ('episode','video movie'))
AND (rt.role in ('production designer'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('author','counter-propaganda','emerald-ring','escort-girl','fantasy-world','festival-del-fuego','gingerbread-woman','golden-rule','hand-grip-exercizer','margate-pier','maximum-security-prison','missing-ship','omnipotent','padrone','pink-bunny','project-blue-book','sharing-a-room','suicide-jump','turning-into-a-bird','u.s.-marshal-service'))
