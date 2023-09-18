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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','Dolby','Mono','Silent','Stereo'))
AND (mi2.info IN ('Austria','Bulgaria','Canada','Czechoslovakia','Hong Kong','India','Italy','Mexico','Portugal','Soviet Union','Spain','UK','USA'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','cinematographer','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.1082)','(#1.245)','(#11.20)','(#2.65)','(#3.20)','(1989-01-09)','Born on the Fourth of July','Brothers Keeper','Bullseye!','Cyclone','Fast Food','Half a Sixpence','Heimlichkeiten','Hideout','Hollywood Shuffle','Housewarming','Lady Sings the Blues','Paradise Alley','Revolution','The Ambulance','The Best Man','The Great Muppet Caper','Under Pressure','Wedding Bell Blues','Working Girl'))
