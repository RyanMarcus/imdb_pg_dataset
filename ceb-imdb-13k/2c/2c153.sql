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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','MET:12.2 m','MET:135 m','MET:140 m','MET:15.2 m','MET:170 m','MET:18.3 m','MET:200 m','MET:45.7 m','MET:600 m','MET:75 m','OFM:16 mm','PCS:Dyaliscope','PFM:8 mm','RAT:2.20 : 1'))
AND (mi2.info IN ('Action','Adult','Adventure','Animation','Comedy','Drama','Family','Fantasy','Film-Noir','Musical','Short','Thriller','War'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','composer','editor','miscellaneous crew'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.62)','(#1.94)','(#3.30)','(#5.3)','(#6.2)','(#7.15)','A Christmas Carol','A Life of Her Own','A Night Out','Angels with Dirty Faces','As Pupilas do Senhor Reitor','As the World Turns','Az aranyember','Blockade','Breakdown','Der Bettelstudent','Der Hauptmann von Köpenick','Der Meineidbauer','Ever Since Eve','Everybody Does It','Hunt the Man Down','Manhunt','Maya','Of Human Bondage','Once in a Lifetime','Pressure Point','Rip Van Winkle','Sarajevski atentat','Sergeant York','Something to Live For','Tartuffe','Terza puntata','Thats Entertainment!','The Baby Sitter','The Candidate','The Cardinal','The Champ','The Comic','The General','The Gift','The Locket','The Meeting','The Public Menace','The Reckoning','The Teacher','The Wanderer','Tosca','Yotsuya kaidan'))
