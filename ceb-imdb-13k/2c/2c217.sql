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
AND (mi1.info IN ('102','79','80','96','97','98','Argentina:30','Argentina:60','USA:25','USA:60'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','Dolby','Mono','Silent','Stereo'))
AND (kt.kind in ('movie','tv movie','video game','video movie'))
AND (rt.role in ('actress','producer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('12','Entente Cordiale','Inheritance','Inside Job','Limbo','Masquerade','Nineteen Eighty-Four','The Final Sanction','The Road to War','The Skin of Our Teeth','Timewatch'))
