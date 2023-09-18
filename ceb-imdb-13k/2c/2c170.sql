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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('DTS','Dolby Digital','Dolby SR','Dolby Stereo','Dolby','Mono','Ultra Stereo'))
AND (mi2.info IN ('Finland:K-8','Iceland:12','Portugal:M/18','USA:Approved','USA:G','USA:R'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('cinematographer','editor','guest','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.160)','(#1.330)','(#1.338)','(#1.415)','(#1.484)','(#1.540)','(#1.612)','A Bridge Too Far','All the Kings Horses','Birdy','C.O.D.','Del 2','Dreams','Fair City','For Better, for Worse','Frances','History of the World: Part I','Hunt the Man Down','Inside Moves','Knockout','Mightier Than the Sword','Once Bitten','Predator 2','See No Evil','Shadow Play','Side by Side','The Egiht-Tomb Village','The Hidden','The Long Way Home','The Silent Partner','The Trojan Horse','The Winters Tale'))
