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
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Black and White','Color'))
AND (mi2.info in ('Cologne, North Rhine - Westphalia, Germany','Hawaii, USA','Japan','Malibu, California, USA','Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Stage 28, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('actress','producer'))
AND (n.gender in ('f'))
AND (t.production_year <= 2010)
AND (t.production_year >= 1950)
AND (k.keyword IN ('anal-sex','blood','dancing','dog','father-son-relationship','fight','flashback','gay','hardcore','independent-film','male-nudity','mother-daughter-relationship','mother-son-relationship','non-fiction','nudity','number-in-title','one-word-title','sex','suicide','surrealism','tv-mini-series'))
