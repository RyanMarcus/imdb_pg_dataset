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
AND (it1.id in ('6'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Mono','Silent','Stereo'))
AND (mi2.info IN ('Action','Biography','Crime','Drama','Family','Mystery','Romance','War'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actress','guest','miscellaneous crew','producer','production designer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.107)','(#1.2)','(#2.42)','(#3.10)','(#6.10)','(#7.8)','(#8.6)','A Likely Story','A Midsummer Nights Dream','A Place in the Sun','Anna Christie','Beatrice Cenci','Big Brother','Catspaw','Chance of a Lifetime','Court Martial','Erziehung vor Verdun. Der große Krieg der weißen Männer','Gabriela','Girl Crazy','Government Girl','I Dood It','Iceland','Justice','Leuchtfeuer','Love and Marriage','Love of Life','My Fair Lady','Notorious','One Foot in Heaven','Second Honeymoon','She Gets Her Man','Si Versailles métait conté','The Accident','The Desert Hawk','The Executioners','The Front Page','The Honeymoon','The Inside Man','The Mark of Cain','The One That Got Away','The Public Menace','The Quick and the Dead','The Taming of the Shrew','They Died with Their Boots On','Yankee Doodle Dandy'))
