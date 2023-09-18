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
AND (it1.id in ('1'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('10','105','25','95','USA:60'))
AND (mi2.info in ('Mono'))
AND (kt.kind in ('movie','tv movie'))
AND (rt.role in ('actress','director'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('accomplice-turned-victim','character-appears-on-a-tv-talk-show','committee-of-national-liberation','congo-dealer','cutting-letters-into-ones-arm','drowned-boy','evian-bottled-water','faked-car-crash','fashion-designer','illegal-newspaper','marrakesh','new-orleans-louisiana','pulled-underwater','roman-porno','teaching-someone-how-to-cook','telephone-psychic'))
