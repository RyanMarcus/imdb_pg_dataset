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
AND (mi1.info IN ('20th Century Fox Studios - 10201 Pico Blvd., Century City, Los Angeles, California, USA','Buenos Aires, Federal District, Argentina','Hollywood, Los Angeles, California, USA','Los Angeles, California, USA','Madrid, Spain','Metro-Goldwyn-Mayer Studios - 10202 W. Washington Blvd., Culver City, California, USA','Mexico City, Distrito Federal, Mexico','Rome, Lazio, Italy','Stage 18, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (mi2.info IN ('Argentina','Austria','Belgium','Czechoslovakia','Finland','Germany','Italy','Japan','Mexico','Soviet Union','Spain','Sweden','USA','West Germany'))
AND (kt.kind in ('episode','tv movie','tv series','video movie'))
AND (rt.role in ('cinematographer','composer','costume designer','guest','miscellaneous crew'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.18)','(#1.54)','(#2.9)','(#3.15)','(#5.17)','Abe Lincoln in Illinois','Accidents Will Happen','Akô rôshi - Ten no maki; Chi no maki','Anthony Adverse','Avalanche','Bedtime Story','Boccaccio','Crime of Passion','Die Unbesiegbaren','Fall Guy','Fools Gold','Foreign Correspondent','Gold Fever','Holnap lesz fácán','House of Strangers','Im weißen Rößl','Its a Wonderful World','Little Boy Lost','North to Alaska','One More River','Pot-Bouille','Ricochet','Seven Sinners','Skin Game','Success Story','Summer Holiday','The Bounty Hunter','The Eurovision Song Contest','The Facts of Life','The Golden Fleecing','The King of Kings','The Love Machine','The Matchmaker','The Miracle','The Opposite Sex','The Plainsman','The Recruit','The Visit','The Wrong Man','Waterfront','Wyoming','Yellow Jack'))
