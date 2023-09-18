SELECT COUNT(*) FROM title as t,
movie_keyword as mk, keyword as k,
movie_companies as mc, company_name as cn,
company_type as ct, kind_type as kt,
cast_info as ci, name as n, role_type as rt
WHERE t.id = mk.movie_id
AND t.id = mc.movie_id
AND t.id = ci.movie_id
AND ci.movie_id = mc.movie_id
AND ci.movie_id = mk.movie_id
AND mk.movie_id = mc.movie_id
AND k.id = mk.keyword_id
AND cn.id = mc.company_id
AND ct.id = mc.company_type_id
AND kt.id = t.kind_id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (k.keyword IN ('half-blind','jumping-onto-a-train','learning-to-play-the-piano','mercury','paranoid-psychosis','reference-to-the-koch-brothers','reference-to-william-mckinley','scenarios-usa','space-based-telescopes','space-fight','tripe-the-meat','two-against-one','uterine-cancer','walking-home-from-school'))
AND (cn.country_code IN ('[au]','[es]','[gr]','[in]','[se]'))
AND (ct.kind IN ('distributors','production companies'))
AND (kt.kind IN ('episode','movie','video movie'))
AND (rt.role IN ('costume designer'))
AND (n.gender IN ('f'))
