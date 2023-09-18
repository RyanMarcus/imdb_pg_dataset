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
AND (it1.id in ('6'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','Mono','Silent','Stereo'))
AND (mi2.info IN ('Buenos Aires, Federal District, Argentina','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','Hal Roach Studios - 8822 Washington Blvd., Culver City, California, USA','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (kt.kind in ('movie','tv series','video movie'))
AND (rt.role in ('composer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.37)','A Time to Die','Birds of a Feather','Blossoms in the Dust','Das Lied der Matrosen','El amor tiene cara de mujer','Help Wanted','Huckleberry Finn','National Velvet','Open House','Pack Up Your Troubles','Quarantine','Scene of the Crime','Show Boat','The Avengers','The Black Widow','The Epidemic','The Hypnotist','The Masked Marvel','The Prisoner','The Virginian','Three Kids and a Queen'))
