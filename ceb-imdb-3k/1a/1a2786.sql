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
AND (it1.id in ('7'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Moviecam Cameras','CAM:Panavision Genesis HD Camera','CAM:Panavision Panaflex Platinum, Panavision Primo Lenses','LAB:Fotofilm S.A., Madrid, Spain','LAB:Metrocolor, USA','LAB:Technicolor','PFM:35 mm','PFM:Digital','RAT:2.35 : 1','RAT:4:3'))
AND (mi2.info IN ('Iverson Ranch - 1 Iverson Lane, Chatsworth, Los Angeles, California, USA','Mexico','Midwest Street, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Palm Springs, California, USA','Stage 20, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 22, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 24, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 5, Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Stage 6, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Turin, Piedmont, Italy','West Berlin, Berlin, Germany'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('cinematographer','composer','producer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
