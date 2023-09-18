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
AND (it1.id in ('1'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('105','13','58','67','74','84','95','USA:10'))
AND (mi2.info IN ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Berlin, Germany','CBS Studio 50, New York City, New York, USA','Cinecittà Studios, Cinecittà, Rome, Lazio, Italy','General Service Studios - 1040 N. Las Palmas, Hollywood, Los Angeles, California, USA','London, England, UK','Los Angeles, California, USA','Mexico City, Distrito Federal, Mexico','Paris, France','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA','Revue Studios, Hollywood, Los Angeles, California, USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
