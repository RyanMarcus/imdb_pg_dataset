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
AND (it1.id in ('5'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Canada:14+','Canada:AA','Canada:G','Denmark:11','Germany:6','Hong Kong:III','India:A','Peru:14','Switzerland:18'))
AND (mi2.info IN ('Cleveland, Ohio, USA','Royce Hall - 340 Royce Drive, UCLA, Westwood, Los Angeles, California, USA','Spain','Stage 15, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 29, Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('production designer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
