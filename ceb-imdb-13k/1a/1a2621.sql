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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Boston, Massachusetts, USA','Budapest, Hungary','Buenos Aires, Federal District, Argentina','Dodger Stadium - 1000 Elysian Park Avenue, Chávez Ravine, Elysian Park, Los Angeles, California, USA','France','Isle of Man','Laramie Street, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Luxembourg','Naples, Campania, Italy','Santa Clarita, California, USA','Stage 25, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Wall Street, Manhattan, New York City, New York, USA','West Hollywood, California, USA','Yuma, Arizona, USA'))
AND (mi2.info IN ('Austria:16','Canada:16+','Canada:PA','Denmark:11','Germany:6','Hong Kong:IIA','Italy:T','New Zealand:M','Taiwan:PG-12','USA:PG'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('composer','miscellaneous crew'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
