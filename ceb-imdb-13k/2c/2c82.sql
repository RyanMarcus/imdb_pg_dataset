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
AND (mi1.info IN ('108','13','80','89','92'))
AND (mi2.info IN ('Berlin, Germany','Cinecittà Studios, Cinecittà, Rome, Lazio, Italy','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Los Angeles, California, USA','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Pinewood Studios, Iver Heath, Buckinghamshire, England, UK','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA','Republic Studios, Hollywood, Los Angeles, California, USA'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','guest','miscellaneous crew','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#2.2)','(#3.30)','(#3.4)','(#5.10)','(#5.9)','Charleys Tante','Conspiracy','Designing Woman','Eyewitness News','Killer McCoy','Land of Liberty','Monte Cristo','Roman Holiday','Salome','Scandal Sheet','Second Chance','The Big Gamble','The Girl Friend','The Honeymoon','The Locket','The Man Who Came Back','The Ordeal','The Secret','The Survivors','The Target','The Wild Bunch','World of Sport'))
