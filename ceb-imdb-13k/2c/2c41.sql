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
AND (it1.id in ('2'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('DTS','Dolby Digital','Dolby SR','Dolby','Mono','Silent','Stereo','Ultra Stereo'))
AND (kt.kind in ('episode','tv movie','tv series','video game'))
AND (rt.role in ('production designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.1002)','(#1.1744)','(#1.3001)','(#1.3479)','(#12.25)','(#16.171)','(#6.107)','(1998-02-23)','(2009-01-19)','(2011-03-21)','A Return to Normalcy','Acosada','Agency','American Primitive','Betty White','Beyond JFK: The Question of Conspiracy','Charm','Desperate Acts of Magic','End Run','Game Night 5','Godzilla','Good Intentions','Gran final: Part 2','Heaven and Hell','Invincible','Jack Frost','Jian guo da ye','Just My Luck','Luna llena','Mac','Man on the Moon','No Secrets','Perfect Match','Rock and a Hard Place','Smoke on the Water','Sneeze','Talk to the Hand','Team High Voltage Wont Let Their Teammates Transfer to Team Wayuk','The Cider House Rules','The Mark','The Perfect Crime','TimeScapes','Titus Andronicus','U.S. Marshals','Whos Got Game?','Why Did You Have to Take Your Pants Off?!','Worm'))
