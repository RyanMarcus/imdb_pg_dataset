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
AND (it1.id IN ('7'))
AND (mi1.info in ('CAM:Panavision Cameras and Lenses','MET:300 m','PCS:Kinescope','PCS:Super 35','PFM:35 mm','PFM:70 mm','PFM:D-Cinema','RAT:1.33 : 1','RAT:1.78 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('actress'))
AND (n.gender in ('f'))
AND (n.name_pcode_nf in ('D5162','E4213','J5215','M6263') OR n.name_pcode_nf IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (cn.name in ('Columbia Broadcasting System (CBS)','Metro-Goldwyn-Mayer (MGM)','Paramount Pictures','Pathé Frères','Universal Pictures','Warner Home Video'))
AND (ct.kind in ('distributors','production companies'))
