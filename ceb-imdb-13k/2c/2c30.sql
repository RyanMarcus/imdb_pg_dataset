SELECT COUNT(*) FROM title as t,
kind_type as kt,
info_type as it1,
movie_info as mi1,
movie_info as mi2,
info_type as it2,
cast_info as ci,
role_type as rt,
name as n
WHERE
t.id = ci.movie_id
AND t.id = mi1.movie_id
AND t.id = mi2.movie_id
AND mi1.movie_id = mi2.movie_id
AND mi1.info_type_id = it1.id
AND mi2.info_type_id = it2.id
AND (it1.id in ('7'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('OFM:35 mm','PCS:Shawscope','PCS:Totalscope','PFM:Video','RAT:1.37 : 1'))
AND (mi2.info IN ('Australia','Brazil','Denmark','Finland','France','Greece','Hong Kong','Hungary','India','Italy','Japan','Switzerland','UK','USA','Yugoslavia'))
AND (kt.kind in ('episode','tv movie','tv series','video movie'))
AND (rt.role in ('actress','cinematographer','director','miscellaneous crew','production designer'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#4.9)','(#5.6)','(#8.3)','A Double Life','Alice in Wonderland','Assassin','Black Gold','Carnival','Casino Royale','Catspaw','Cornered','Der müde Theodor','Giant','Jack the Ripper','Kidnapped','La dolce vita','Le bossu','Line of Fire','Man Hunt','Meet Me in Las Vegas','Midnight','Nous sommes tous des assassins','Sergeant York','Si Paris nous était conté','The Avengers','The Brothers','The Lost Weekend','The Man from Down Under','The Runaway'))
