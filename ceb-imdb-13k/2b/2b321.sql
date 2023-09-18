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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Brazil:12','Canada:18A','Finland:K-11','Finland:K-16','Finland:K-7','Hong Kong:III','Ireland:12A','Mexico:B','New Zealand:M','Peru:PT','Philippines:G','Switzerland:10','Switzerland:14','USA:M'))
AND (mi2.info in ('Color'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('cinematographer'))
AND (n.gender in ('f'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (k.keyword IN ('cooking-competition','fake-artifact','future-without-prospect','greyhound','isolated-place','payne-ohio','reference-to-dion-charles-obanyon','reference-to-jim-webb','reference-to-montana-lance','secret-escape-chute','woman-without-head'))
