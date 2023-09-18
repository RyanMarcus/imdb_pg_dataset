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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('4-Track Stereo','70 mm 6-Track','AGA Sound System','Dolby Digital','Mono','Perspecta Stereo','Stereo','Vitaphone'))
AND (mi2.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:Technicolor','LAB:Technicolor, USA','MET:300 m','MET:600 m','OFM:Video','PCS:Spherical','PFM:70 mm','PFM:Video','RAT:1.20 : 1','RAT:1.33 : 1'))
AND (kt.kind in ('episode','tv series','video game','video movie'))
AND (rt.role in ('composer','costume designer','production designer','writer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.63)','(#2.26)','(#2.45)','(#3.35)','(#4.2)','(#5.12)','A Star Is Born','Anna Christie','Bottoms Up','Death Trap','Dillinger','Duffys Tavern','Errand of Mercy','Fall Guy','French Leave','God Is My Co-Pilot','Goin to Town','High Stakes','Huckleberry Finn','Love Story','My Fair Lady','Richard II Part 2: The Deposing of a King','Richard III','Running Wild','See No Evil','Shadow of a Man','Sister Kenny','Sitting Pretty','Smart Woman','State Fair','Tales of Manhattan','The Godfather: Part II','The Informer','The Lie','The Locket','The Milkman','The Perils of Pauline','The System','The Tiger Woman','The Wrong Box','Thomas Müntzer','Threes Company','Trapped','Voyna i mir'))
