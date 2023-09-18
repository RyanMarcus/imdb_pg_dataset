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
AND (it1.id in ('8'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Cuba','Denmark','Egypt','Estonia','Germany','India','Peru','UK'))
AND (mi2.info in ('Arabic','Bengali','English','Estonian','French','Spanish'))
AND (kt.kind in ('episode','video movie'))
AND (rt.role in ('miscellaneous crew'))
AND (n.gender in ('f'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('802700s','acacia-tree','aerial-photography','blood-conserve','can-of-whipped-cream','character-repeating-someone-elses-dialogue','chongging-china','climbing-down-ships-rope-ladder','department-store-owner','filmmakers','friendly-indians','horse-testicles','maiming','mistaken-for-a-drug-trafficker','monkey','penis-model','physical-harm','psychrophile','samurai-love-god','turner-syndrome','waiting'))
