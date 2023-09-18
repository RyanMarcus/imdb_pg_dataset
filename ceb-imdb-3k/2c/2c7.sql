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
AND (it1.id in ('8'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Austria','Canada','Czechoslovakia','Denmark','Hong Kong','Italy','Mexico','Philippines','Poland','Soviet Union','Switzerland','Yugoslavia'))
AND (mi2.info IN ('Barcelona, Cataluña, Spain','Berlin, Germany','Buenos Aires, Federal District, Argentina','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','London, England, UK','Los Angeles, California, USA','Mexico City, Distrito Federal, Mexico','Mexico','Munich, Bavaria, Germany','Paris, France','Philippines','Stage 9, 20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('editor'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.263)','(#1.432)','(#1.944)','Die letzte Chance','Game 6','Honor Bound','Masterpiece','Palace','Running Scared','Special','Thats Entertainment','The Dating Game','The Suicide Club','The Threat'))
