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
AND (it1.id in ('17'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Last show of the series.','One of over 700 Paramount Productions, filmed between 1929 and 1949, which were sold to MCA/Universal in 1958 for television distribution, and have been owned and controlled by Universal ever since.'))
AND (mi2.info IN ('4-Track Stereo','70 mm 6-Track','DTS','Dolby Digital','Mono','Silent','Stereo'))
AND (kt.kind in ('episode','movie','tv series','video movie'))
AND (rt.role in ('actor','director','editor','miscellaneous crew'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.16)','(#7.7)','A Place in the Sun','Birds of a Feather','Blue Skies','Der Feldherrnhügel','Der Maulkorb','Guest in the House','Gypsy','Is There Sex After Death?','Justice','Mandrin','Melodi grand prix','One Sunday Afternoon','Prima puntata','Pygmalion','Roberta','Ruggles of Red Gap','Sailor Beware','Salome','Section spéciale','Somebody Up There Likes Me','The Charge of the Light Brigade','The Patriot','The Phantom of the Opera','The Tell-Tale Heart','Threes Company','Tora! Tora! Tora!'))
