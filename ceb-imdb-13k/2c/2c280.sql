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
AND (mi1.info IN ('DTS','DTS-Stereo','Datasat','Dolby SR','SDDS'))
AND (mi2.info IN ('Berlin, Germany','Chicago, Illinois, USA','Melbourne, Victoria, Australia','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA','Samuel Goldwyn Studios - 7200 Santa Monica Boulevard, West Hollywood, California, USA','Stage 28, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 3, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Studio 8H, NBC Studios - 30 Rockefeller Plaza, Manhattan, New York City, New York, USA','Washington, District of Columbia, USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('actress','composer','editor','guest','writer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#13.43)','(#4.138)','(#8.159)','(2002-10-02)','(2006-02-17)','(2006-05-04)','(2009-07-09)','(2013-01-25)','Blame','Blind Love','Bliss','Cosmopolitan','Cuckoos Nest','Denver Broncos vs. San Diego Chargers','Dunston Checks In','Enfermés dehors','Eurolaul','Four Days','Francesco Carrozzini','Hands Across the Sea','Heaven and Earth','I Think I Love My Wife','Just Add Water','Kid Millions','Liberty Stands Still','Metallica: S&M','Ned Kelly','Poultrygeist: Night of the Chicken Dead','Problem Child','Schwestern','Seven Keys to Baldpate','Stagecoach','Student Affairs','Sweet Sixteen','Tenderness','The Luck of the Irish','The Picture','The Quality of Life','Visa'))
