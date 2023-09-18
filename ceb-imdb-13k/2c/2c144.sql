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
AND (it1.id in ('5'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Finland:K-15','France:-18','India:A','Ireland:15','Netherlands:AL','New Zealand:M','New Zealand:R16','Portugal:M/18','USA:TV-G','West Germany:16'))
AND (mi2.info IN ('CAM:Panaflex Camera and Lenses by Panavision','CAM:Panaflex Cameras and Lenses by Panavision','CAM:Panavision Cameras and Lenses','LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','LAB:Metrocolor, Culver City (CA), USA','LAB:Technicolor, UK','OFM:35 mm','PCS:(anamorphic)','RAT:1.85 : 1'))
AND (kt.kind in ('episode','movie','tv movie','video game'))
AND (rt.role in ('actress','director','editor'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.101)','(#1.185)','(#1.224)','(#1.490)','(#1.525)','(#1.545)','(#1.560)','(#1.764)','(#5.12)','12','A Christmas Carol','Ada','Battle of Britain','Bloodsport','Bringing Up Baby','C.O.D.','Cinématon','David Copperfield','Dust to Dust','Fall Guy','For Love or Money','Francesco','Fukkatsu no hi','High Anxiety','Hobsons Choice','Jubilee','King of the Hill','Love on the Run','Mardi Gras','Never Say Die','Oceans Eleven','Quo Vadis','Raging Bull','Reflections','Royal Wedding','Scared Stiff','Scorpion','Second Sight','Sitting Ducks','Some Enchanted Evening','The Bigger They Are','The Family Tree','The Golden Fleece','The Rose','The Stranger','The Turn of the Screw'))
