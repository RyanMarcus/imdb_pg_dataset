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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info in ('Argentina:13','France:-16','Germany:6','Italy:VM18','Netherlands:16','Philippines:R-18','Switzerland:10','Switzerland:16','UK:X','USA:TV-PG'))
AND (mi2.info in ('OFM:35 mm','PCS:Spherical','PFM:35 mm','RAT:1.33 : 1','RAT:1.85 : 1','RAT:16:9 HD','RAT:2.35 : 1'))
AND (kt.kind in ('movie','video movie'))
AND (rt.role in ('costume designer','director'))
AND (n.gender in ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('australian-television','ccr-mining','chinese-linking-rings','church-wedding','clitoromegaly','cracked-mirror','easter','fort-yuma','gagliano-italy','injection-under-tongue','iodine','knife-in-vagina','lakota','livingston-texas','lucky-charm','mass-murder-in-dream','musical-overture','new-zealander','pretoria-south-africa','rebuilding-team','reference-to-bela-lugosi','reference-to-deutschland','sex-with-a-goat','tagliacozzo-italy','u.s.-invasion'))
