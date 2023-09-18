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
AND (mi1.info in ('Australia:R','Brazil:12','Canada:13+','Canada:18A','Chile:TE','Finland:K-15','Germany:6','Iceland:16','Ireland:15A','Portugal:M/16','South Korea:All','USA:Approved','USA:PG-13'))
AND (mi2.info in ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','OFM:35 mm','PCS:Digital Intermediate','PCS:Spherical','PCS:Super 35','PFM:16 mm','PFM:35 mm','RAT:1.33 : 1','RAT:1.85 : 1','RAT:2.35 : 1'))
AND (kt.kind in ('episode','movie','video movie'))
AND (rt.role in ('cinematographer','composer'))
AND (n.gender in ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (k.keyword IN ('bloodlust','bomb-shelter','burnouts','buzz-aldrin','career-choice','ceiling-mirror','dutch-cinema','fifty-first-state','françois-villon','holiday-horror','indian-army','laguardia-airport-queens-new-york-city','modesty','nude-in-a-window','outing','reference-to-blaise-pascal','religious-film','scale-model-house','stock-cube','tupolev-tu-2-bomber'))
