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
AND (it1.id in ('16'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Austria:1930','Austria:1951','Germany:1928','UK:1957','UK:1959','USA:1952','USA:1953','USA:1954','USA:1956','USA:1958','USA:1959','USA:1960','USA:1961','USA:1962','USA:1963'))
AND (mi2.info IN ('CAM:Arriflex Cameras','LAB:Laboratoires LTC, St. Cloud, France','LAB:Movielab, USA','MET:300 m','OFM:35 mm','OFM:Live','OFM:Video','PCS:Panavision','PFM:8 mm','RAT:2.20 : 1','RAT:2.55 : 1'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('editor','guest','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.125)','(#1.19)','(#1.82)','A Question of Guilt','A Time to Die','All the Kings Men','Battleground','Bellbird','Billy the Kid','Blood Money','Carrie','Cimarron','Dragnet','Fall Guy','Familie Benthin','Government Girl','Happy Landing','Jam Session','Les trois mousquetaires','Night and Day','Ordeal','Requiem for a Heavyweight','Sergeant York','Shoot to Kill','State of the Union','Sweet Rosie OGrady','The Exchange','The Gamble','The Great Sinner','The Longest Day','The Man Outside','The Politician','The Whole Towns Talking','The Witch','The Wrong Box','Tonka','Unterwegs zu Lenin','Yolanda and the Thief'))
