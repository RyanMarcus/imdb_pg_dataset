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
AND (it1.id in ('3'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Comedy','Crime','Documentary','Drama','Horror','Short','Thriller'))
AND (mi2.info in ('Berlin, Germany','Buenos Aires, Federal District, Argentina','London, England, UK','Los Angeles, California, USA','Mexico','New York City, New York, USA','Paris, France','Toronto, Ontario, Canada'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('cinematographer'))
AND (n.gender IS NULL)
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('anal-sex','based-on-play','character-name-in-title','homosexual','male-nudity','mother-daughter-relationship','murder'))
