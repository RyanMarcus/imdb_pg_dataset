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
AND (mi1.info IN ('70 mm 6-Track','Dolby Digital','Dolby SR','Dolby Stereo','Dolby','Ultra Stereo'))
AND (mi2.info IN ('Finland:K-16','Germany:BPjM Restricted','Netherlands:16','Norway:18','Singapore:PG','Spain:18','Sweden:15','UK:12','UK:18','USA:Approved','USA:G','USA:TV-G'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('editor','miscellaneous crew','producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.107)','(#1.109)','(#1.233)','(#1.344)','(#1.440)','Airplane II: The Sequel','Apocalypse Now','Atlanta Falcons vs. Philadelphia Eagles','Born in Flames','Brushfire','Buffalo Bills vs. New York Jets','Daddys Little Girl','Dead Ringers','Diamonds Are Forever','Getting Even','Night Moves','Skin','Street Scene','Stress','The Ambulance','The Godfather','The Midas Touch','The Story of Will Rogers','The Suicide Club','The Talk Show','The Young and the Restless','To Tell the Truth','Triangle','Wuthering Heights'))
