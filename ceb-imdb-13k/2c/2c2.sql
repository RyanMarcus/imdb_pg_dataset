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
AND (it1.id in ('7'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('MET:200 m','OFM:Video','PCS:(anamorphic)','PCS:CinemaScope','PCS:Dyaliscope','PCS:Kinescope','PCS:Panavision','PCS:Spherical','PFM:35 mm','RAT:1.37 : 1','RAT:2.20 : 1'))
AND (mi2.info IN ('Argentina','Canada','Czechoslovakia','Hong Kong','Hungary','Mexico','UK','West Germany','Yugoslavia'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.106)','(#1.12)','(#1.61)','(#1.85)','(#1.94)','(#4.25)','(#5.27)','(#6.2)','(#6.23)','Body and Soul','Casino Royale','Change of Heart','Checkmate','Chûshingura','Dead or Alive','Dick Tracys G-Men','Eagle Squadron','Festival','Golden Girl','Harlow','Johnny Belinda','Laura','Law and Disorder','Like Father, Like Son','Madame Sans-Gêne','Meet Danny Wilson','On the Run','Ryans Hope','Saboteur','Samson and Delilah','South Pacific','The Avengers','The Beginning or the End','The Box','The Greatest Story Ever Told','The Hustler','The Man Who Knew Too Much','The Professionals','The Story of Dr. Wassell','This Is the Life','Voyna i mir','Whats in a Name?'))
