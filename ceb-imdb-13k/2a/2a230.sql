SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n,
movie_keyword as mk,
keyword as k
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('8'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Argentina','Mexico','USA'))
AND (mi2.info in ('Buenos Aires, Federal District, Argentina','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Mexico','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('tv series','video game','video movie'))
AND (rt.role in ('writer'))
AND (n.gender in ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
