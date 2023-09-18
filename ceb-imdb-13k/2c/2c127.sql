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
AND (it1.id in ('2'))
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('Mono','Silent','Stereo'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('producer','production designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.40)','(#1.53)','(#1.67)','(#2.22)','(#4.8)','(#5.23)','(#6.4)','A Stitch in Time','A beszélö köntös','Airport 1975','Breakdown','Chip Off the Old Block','Crime of Passion','Daddy Long Legs','Explosion','Framed','Hunted','Iceland','Its a Wonderful Life','Its in the Air','Jailbreak','Love Letters','Madame X','Nana','Partners','Quo Vadis','Roger la Honte','Sergeant Madden','Sisters','Summer Holiday','The Breaking Point','The Charge of the Light Brigade','The Drifter','The Face at the Window','The Farmers Daughter','The Gunfighter','The Heiress','The Kid from Texas','The Lottery','The Merry Widow','The Naked City','They Died with Their Boots On','Threes Company','Up Front','Waterloo Bridge'))
