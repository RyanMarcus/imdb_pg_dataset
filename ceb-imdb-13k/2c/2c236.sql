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
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('70 mm 6-Track','DTS','Datasat','Dolby Digital EX','Dolby SR','Dolby','Stereo','Ultra Stereo'))
AND (mi2.info IN ('Arabic','Danish','Dutch','English','French','Hindi','Hungarian','Polish'))
AND (kt.kind in ('episode','movie','tv movie','video game'))
AND (rt.role in ('costume designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.549)','(#1.5652)','(#26.9)','(1998-12-10)','(1999-09-23)','(2006-02-15)','(2009-03-08)','At Sea','Children of God','Coulda, Woulda, Shoulda','Goliath','La noche del fuego','Leading Ladies','Murder in the First','Rape','The Sisterhood of the Traveling Pants 2','The Wicked'))
