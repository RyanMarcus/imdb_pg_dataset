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
AND (mi1.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:DeLuxe, Hollywood (CA), USA','LAB:DeLuxe, USA','PCS:CinemaScope','RAT:1.33 : 1'))
AND (mi2.info IN ('Bavaria Filmstudios, Geiselgasteig, Grünwald, Bavaria, Germany','Old Tucson - 201 S. Kinney Road, Tucson, Arizona, USA','Stage 23, Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Stage 25, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 27A, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Washington, District of Columbia, USA'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
