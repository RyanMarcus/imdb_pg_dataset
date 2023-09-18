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
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','DTS','DTS-ES','DTS-Stereo','Dolby Digital','Dolby SR','Dolby Stereo','Dolby','SDDS','Sonics-DDP','Stereo','Ultra Stereo'))
AND (mi2.info IN ('CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','Hong Kong, China','Madrid, Spain','Metromedia Square - 5746 W. Sunset Blvd., Hollywood, Los Angeles, California, USA','New York City, New York, USA','New York, USA','San Francisco, California, USA','Stage 25, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Toronto, Ontario, Canada','Washington, District of Columbia, USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','cinematographer','guest','production designer','writer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.3415)','(#15.85)','(#16.185)','(#7.123)','(#9.55)','(1998-02-07)','(1998-09-25)','(2001-03-24)','(2006-01-24)','(2012-10-05)','Bedazzled','Cave of Truth','Clear History','Diary of a Wimpy Kid: Dog Days','Fear and Loathing in Las Vegas','Half-Life','Hearth and Home','Lucky Day','Swoon','The Last Waltz','The Opportunists','Towar','Traffic','Trapped on a Ledge','Undercurrents'))
