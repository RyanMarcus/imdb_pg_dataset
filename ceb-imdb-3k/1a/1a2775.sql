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
AND (it1.id in ('15'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Host: [starting a Race in the first episode of each season] The world is waiting for you. Good luck... travel safe... go!','James Bond: Bond, James Bond'))
AND (mi2.info IN ('Big Sky Ranch - 4927 Bennett Road, Simi Valley, California, USA','Marina del Rey, California, USA','Nashville, Tennessee, USA','Oakland, California, USA','Paramount Ranch - 2813 Cornell Road, Agoura, California, USA','Reno, Nevada, USA','Stage 14, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Wilmington, North Carolina, USA'))
AND (kt.kind in ('movie','video game','video movie'))
AND (rt.role in ('director','producer','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
