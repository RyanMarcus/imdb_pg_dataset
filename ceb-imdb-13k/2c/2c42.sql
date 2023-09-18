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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Buenos Aires, Federal District, Argentina','Cinecittà Studios, Cinecittà, Rome, Lazio, Italy','Corriganville, Ray Corrigan Ranch, Simi Valley, California, USA','Desilu Studios - 9336 W. Washington Blvd., Culver City, California, USA','Hal Roach Studios - 8822 Washington Blvd., Culver City, California, USA','Iverson Ranch - 1 Iverson Lane, Chatsworth, Los Angeles, California, USA','London, England, UK','Los Angeles, California, USA','Philippines','Shepperton Studios, Shepperton, Surrey, England, UK','Stage 17, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (mi2.info IN ('Australia','Canada','Czechoslovakia','Finland','India','Japan','Mexico','Philippines','Poland','Portugal','Soviet Union','Spain','Sweden','UK','West Germany'))
AND (kt.kind in ('episode','tv movie','video game','video movie'))
AND (rt.role in ('actress','costume designer','guest','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.57)','(#1.89)','(#1.95)','(#2.19)','(#3.33)','(#5.1)','(#5.13)','(#6.2)','Adhikar','Candida','Caught in the Act','Cinderella','Die Toten bleiben jung','Ill Fix It','Just My Luck','Keep Smiling','King Kong','Montserrat','My Wild Irish Rose','Playgirl','Sesame Street','Shadow of a Man','The Big Noise','The Big Parade of Comedy','The Circus','The Dinner Party','The Old Curiosity Shop','The Paleface','The Public Menace','The Shadow','The Sniper','The White Angel','The Witch'))
