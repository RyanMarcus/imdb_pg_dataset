SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n,
movie_keyword as mk,
keyword as k
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND t.id = mk.movie_id
AND k.id = mk.keyword_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('2'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Black and White','Color'))
AND (mi2.info in ('Canada:G','Finland:K-12','India:U','Norway:16','Sweden:11','Sweden:Btl','USA:Passed','USA:TV-G','USA:X','West Germany:18','West Germany:6'))
AND (kt.kind in ('episode','movie','tv movie'))
AND (rt.role in ('actress'))
AND (n.gender in ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (k.keyword IN ('based-on-off-broadway-play','bat-the-animal','boat-chase','bread-box','hidden-city','hurling-the-sport','illegal-gun-buying','investigative-reporter','jekyll','knock-em-dead','magical-pants','panhandling','precociousness','prig','red-faced-monkey','red-jeep','reference-to-franklin-d-roosevelt','russian-folk-tale','simple-man','street-prophet','sunday-mass','uber-soldat','wedding-of-main-characters'))
