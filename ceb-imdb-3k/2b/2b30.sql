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
AND (it1.id in ('105'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('$10,000','$100,000','$15,000','$2,000','$2,500','$20,000','$30,000','$50,000','$6,000','£1,000','€ 1,000','€ 5,000'))
AND (mi2.info in ('Comedy','Documentary','Drama','Horror','Short'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('costume designer','director'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('bad-memory','bed-ridden-child','boulder-colorado','box-of-peas','business-plan','chinese-in-hawaii','electromagnetic-pulse','flamingo','giant-balloon','goat-facing-a-tree-sex-position','high-school-soccer','kicking-a-dog','pamper','photographing-sex','playoffs','raw-milk','reference-to-molly-brown','reference-to-robert-hossein','refreshment-stand','return-of-classic-doctor-who-character','smelling','tearing-up-a-photograph','toll','undercover'))
