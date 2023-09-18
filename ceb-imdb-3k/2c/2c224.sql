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
AND (it1.id in ('3'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Animation','Biography','Comedy','Drama','Family','Film-Noir','History','Horror','Music','Mystery','Sport','Talk-Show'))
AND (mi2.info IN ('British Columbia, Canada','Brooklyn, New York City, New York, USA','Metro Manila, Luzon, Philippines','Rio de Janeiro, Rio de Janeiro, Brazil','Santiago, Chile','Singapore','Toronto, Ontario, Canada','Van Nuys, Los Angeles, California, USA'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actress','editor','producer','writer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.13)','(#1.528)','(#13.55)','(1999-07-30)','(2000-03-24)','(2004-11-21)','(2010-09-13)','(2012-10-23)','...and a Dancing Santa','Andrea Chénier','Baba','Cabin Fever 2: Spring Fever','Control Factor','Everest','George','Goodbye, Mr. Chips','Its Okay, Run Them Over!','Liv','Over the Edge','Research and Destroy','Sea of Love','Temple Grandin','The Night We Never Met'))
