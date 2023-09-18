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
AND (mi1.info IN ('Australia','Austria','Canada','Czechoslovakia','East Germany','France','Germany','Hong Kong','Italy','Mexico','Netherlands','Spain','Sweden','USA','West Germany'))
AND (mi2.info IN ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Buenos Aires, Federal District, Argentina','CBS Studio Center - 4024 Radford Avenue, Studio City, Los Angeles, California, USA','Mexico City, Distrito Federal, Mexico','New York City, New York, USA','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Republic Studios - 4024 Radford Avenue, North Hollywood, Los Angeles, California, USA','Revue Studios, Hollywood, Los Angeles, California, USA','Universal Studios - 100 Universal City Plaza, Universal City, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('tv movie','tv series','video movie'))
AND (rt.role in ('actress','guest','miscellaneous crew','producer','writer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.38)','(#2.23)','(#4.8)','(#6.8)','(#7.7)','(#8.2)','A Matter of Honor','Antigone','Arena','Assault','Blind Date','Breakthrough','Buried Treasure','Der Maulkorb','Follow the Boys','It Started with Eve','Kismet','Lady in the Dark','Last Chance','Million Dollar Baby','Missing','Pinocchio','Quo Vadis','Sesame Street','Sweet Rosie OGrady','The Dinner Party','The Legacy','The Phantom of the Opera','The Proposal','The Sacrifice','The Secret','The Silent Witness','The Target','With a Song in My Heart'))
