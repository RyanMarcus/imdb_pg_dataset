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
AND (it1.id in ('18'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','British Columbia, Canada','Miami, Florida, USA','New York, USA','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Paris, France','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Santa Monica, California, USA','Shepperton Studios, Shepperton, Surrey, England, UK','Stage 24, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 29, Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Stage 37, Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Stage 8, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','USA','Vancouver, British Columbia, Canada'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','DTS','DTS-ES','DTS-Stereo','Datasat','Dolby Digital EX','Dolby Digital','Dolby SR','Dolby','SDDS','Stereo','Ultra Stereo'))
AND (kt.kind in ('movie','video game','video movie'))
AND (rt.role in ('cinematographer','costume designer','editor','miscellaneous crew','producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.5295)','(#9.85)','(1995-07-19)','(1998-10-27)','100 Greatest Stand-Ups','A New Beginning','Charlie Sheen','Hiling','Know Thy Enemy','Sudden Impact'))
