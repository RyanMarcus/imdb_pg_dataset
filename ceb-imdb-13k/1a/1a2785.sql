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
AND (it1.id in ('18'))
AND (it2.id in ('5'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Burbank, California, USA','Elstree Studios, Borehamwood, Hertfordshire, England, UK','Fox Studios, Moore Park, Sydney, New South Wales, Australia','Knebworth House, Stevenage, Hertfordshire, England, UK','Melody Ranch - 24715 Oak Creek Avenue, Newhall, California, USA','Montréal, Québec, Canada','Rockwell Defense Plant - Bellflower & Imperial Highway, Downey, California, USA','San Francisco, California, USA','Santa Monica, California, USA'))
AND (mi2.info IN ('Finland:K-3','Iceland:10','Ireland:12A','Japan:PG12','New Zealand:M','Norway:(Banned)','Peru:PT','Singapore:PG13','Sweden:(Banned)','Sweden:15','Switzerland:7','Taiwan:R-18','USA:G','USA:GP'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
