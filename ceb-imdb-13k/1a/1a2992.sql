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
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:DeLuxe','LAB:DuArt Film Laboratories Inc., New York, USA','LAB:Laboratoires GTC, Joinville, France','LAB:Technicolor, USA','OFM:35 mm','OFM:Video','PCS:Franscope','PFM:8 mm','RAT:1.33 : 1'))
AND (mi2.info IN ('Canada:14A','Canada:PA','Chile:TE','Germany:12','Germany:18','Netherlands:6','Norway:18','Peru:PT','UK:18','USA:TV-PG','USA:X','West Germany:12','West Germany:o.Al.'))
AND (kt.kind in ('episode','movie','tv series','video game','video movie'))
AND (rt.role in ('guest','producer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
