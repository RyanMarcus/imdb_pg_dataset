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
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Canada:PG','Finland:K-16','Germany:16','Norway:16','Norway:18','Spain:T','Sweden:Btl','UK:AA','UK:PG','USA:G','USA:TV-PG','West Germany:16','West Germany:18'))
AND (mi2.info IN ('102','105','107','109','113','115','51','75','8','82','93','97','98','USA:30','USA:90'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','director','miscellaneous crew','producer','production designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.50)','(#2.36)','(#5.8)','A Midsummer Nights Dream','April Fool','Arrival','Barbary Coast','Bells Are Ringing','Born to Be Bad','Citizen Kane','Dansk melodi grand prix','George Whites 1935 Scandals','It Happened One Night','Last Chance','Law and Order','Lilith','Love and Marriage','Mildred Pierce','Moral','Oceans Eleven','Pursuit','Rich Man, Poor Man','Sechster Teil','Stagecoach','Sweet Charity','The Importance of Being Earnest','The Noose','The Oscar','The Outcast','The Phantom of the Opera','The Photographer','The Red Shoes','The Soldier','The Warning','True Confession','Whistling in the Dark'))
