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
AND (it1.id in ('18'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Berlin, Germany','Big Bear Lake, Big Bear Valley, San Bernardino National Forest, California, USA','Buffalo, New York, USA','General Service Studios - 1040 N. Las Palmas, Hollywood, Los Angeles, California, USA','Madrid, Spain','RKO-Pathé Studios - 9336 Washington Blvd., Culver City, California, USA','Santa Paula, California, USA','Sevilla, Andalucía, Spain','Stage 18, Paramount Studios - 5555 Melrose Avenue, Hollywood, Los Angeles, California, USA','Twickenham Film Studios, St Margarets, Twickenham, Middlesex, England, UK','Vasquez Rocks Natural Area Park - 10700 W. Escondido Canyon Rd., Agua Dulce, California, USA'))
AND (mi2.info IN ('CAM:Panavision Cameras and Lenses','LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:DeLuxe','MET:','OFM:35 mm','OFM:Live','PCS:Spherical','PFM:70 mm','PFM:Video','RAT:1.20 : 1','RAT:1.37 : 1','RAT:1.66 : 1','RAT:2.35 : 1','RAT:4:3'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('actress','guest','miscellaneous crew'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.20)','(#1.34)','(#2.44)','(#4.34)','(#6.19)','Ada','Airport 1975','Angel','Anything Goes','Arrival','Bathing Beauty','Black Sheep','Boy Meets Girl','Bright Lights','Buried Treasure','Caravan','Counter-Attack','Deadfall','Der Feldherrnhügel','Easy Money','False Witness','Foreign Correspondent','Forever Amber','Golden Boy','Gypsy','High Tension','Hypnotized','Jeder stirbt für sich allein','Les misérables','Night and Day','Raffles','Summer Holiday','The Blue Knight','The Buccaneer','The Glorious Adventure','The Godfather','The Great Ziegfeld','The Hunted','The Importance of Being Earnest','The Monster','The Old Curiosity Shop','The Pursuit of Happiness','The Silver Chalice','The Squaw Man','The Ten Commandments','The Unknown','The Warning','You and Me'))
