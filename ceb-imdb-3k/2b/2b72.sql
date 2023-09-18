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
AND (it1.id in ('8'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Argentina','Bulgaria','Canada','Germany','India','Italy','Mexico','Netherlands','Sweden','UK'))
AND (mi2.info in ('Dolby Digital','Dolby SR','Dolby','Mono','Stereo'))
AND (kt.kind in ('tv movie','tv series','video game'))
AND (rt.role in ('miscellaneous crew'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (k.keyword IN ('4th-century-b.c.','blindness-caused-by-boxing','bombing-victim','circus-giant','decamerotic','eaten-by-shark','exploding-dam','glass-vase','indigenous-language','ithaca-college','la-vida-loca','lancet','meekness','modern-medicine','no-soundtrack','pet-trick','pink-lips','pizza-delivery','reference-to-avalokiteshvara','reference-to-the-hope-diamond','skinny-dipping','spelling','stick-fight'))
