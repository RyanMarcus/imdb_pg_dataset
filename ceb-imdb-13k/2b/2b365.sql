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
AND (it1.id in ('5'))
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Argentina:13','Argentina:16','Argentina:Atp','Australia:G'))
AND (mi2.info in ('30','Argentina:60'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('director','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('17-year-old','chicken-and-egg','climbing-on-a-piano','dumb-criminal','electronics-equipment','emery-board','factory-explosion','fictitious-animal','g-8','ill-mother','kosovo-war','puerperal-fever','reference-to-devil','reference-to-earl-schieb','reference-to-the-delaware-river','rodin-museum-paris','running-mate','tattoo-on-ones-back','teenage-hero','tenderloin-san-francisco','thrown-overboard','title-in-title','twiddling-ones-thumbs','vinland'))
