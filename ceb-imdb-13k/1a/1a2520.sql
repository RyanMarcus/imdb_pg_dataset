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
AND (it1.id in ('1'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('10','106','110','113','117','119','120','128','74','77','81','83','USA:100','USA:85','USA:90'))
AND (mi2.info IN ('Argentina:18','Finland:K-16','Finland:K-18','Germany:12','UK:A'))
AND (kt.kind in ('movie','tv series','video movie'))
AND (rt.role in ('cinematographer','composer','writer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
