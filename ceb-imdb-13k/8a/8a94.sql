SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
cast_info as ci,
role_type as rt,
name as n,
movie_keyword as mk,
keyword as k,
movie_companies as mc,
company_type as ct,
company_name as cn
WHERE
t.id = ci.movie_id
AND t.id = mc.movie_id
AND t.id = mi1.movie_id
AND t.id = mk.movie_id
AND mc.company_type_id = ct.id
AND mc.company_id = cn.id
AND k.id = mk.keyword_id
AND mi1.info_type_id = it1.id
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (it1.id IN ('5'))
AND (mi1.info in ('Argentina:Atp','Australia:G','Finland:K-16','Netherlands:12','Sweden:15','USA:TV-14','USA:TV-PG'))
AND (kt.kind in ('episode','movie'))
AND (rt.role in ('actress','costume designer','producer','writer'))
AND (n.gender in ('f'))
AND (n.surname_pcode in ('B42','B62','B65','H2','J52','L','L2','M6','R2') OR n.surname_pcode IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (cn.name in ('American Broadcasting Company (ABC)','Columbia Broadcasting System (CBS)','General Film Company','National Broadcasting Company (NBC)','Pathé Frères','Universal Film Manufacturing Company'))
AND (ct.kind in ('distributors'))
