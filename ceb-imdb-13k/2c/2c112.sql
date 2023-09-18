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
AND (it1.id in ('1'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('104','106','11','22','25','5','54','55','64','66','7','88','91','USA:50','USA:7'))
AND (mi2.info IN ('4-Track Stereo','Mono','Silent','Stereo'))
AND (kt.kind in ('episode','movie','tv series'))
AND (rt.role in ('director','guest','miscellaneous crew','producer','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.103)','(#1.108)','(#1.121)','(#4.22)','(#5.10)','A Dispatch from Reuters','Az aranyember','Caroline chérie','Carrie','Conspiracy','Follow the Sun','Fools Gold','Forbidden','Game 5','Gilda','Happy Landing','Manpower','Melodi grand prix','Mrs. Miniver','My Sister Eileen','No Way Out','One Sunday Afternoon','Open House','Over the Wall','Pressure Point','Sister Kenny','Smart Woman','Springtime in the Rockies','Success Story','The Choice','The Experiment','The Man','The Princess','The Scarlet Pimpernel','The Traitor','The Triangle','The Virginian','Three Men in a Boat','Tosca'))
