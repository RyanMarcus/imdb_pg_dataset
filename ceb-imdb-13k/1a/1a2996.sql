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
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Dolby SR','Mono','Ultra Stereo'))
AND (mi2.info IN ('Buenos Aires, Federal District, Argentina','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','General Service Studios - 1040 N. Las Palmas, Hollywood, Los Angeles, California, USA','Metromedia Square - 5746 W. Sunset Blvd., Hollywood, Los Angeles, California, USA','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA','Revue Studios, Hollywood, Los Angeles, California, USA','Rome, Lazio, Italy','Stage 22, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 28, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Studio 8H, NBC Studios - 30 Rockefeller Plaza, Manhattan, New York City, New York, USA'))
AND (kt.kind in ('episode','movie','tv movie','video game'))
AND (rt.role in ('miscellaneous crew','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
