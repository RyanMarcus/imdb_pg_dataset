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
AND (it1.id in ('8'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Belgium','Bulgaria','East Germany','Indonesia','Pakistan','Portugal','South Korea','Venezuela'))
AND (mi2.info IN ('Dutch','Filipino','Hebrew','Hungarian','Korean'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('actor','actress','guest','miscellaneous crew','producer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.134)','(#1.161)','(#1.170)','(#1.208)','(#1.219)','(#1.287)','(#1.317)','(#1.374)','(#1.422)','(#1.826)','(#5.33)','(#6.20)','A Hard Days Night','A Young Mans Fancy','Act of Violence','And the Winner Is...','Back to the Beach','Body Rock','Boy Meets Girl','Catspaw','Change of Heart','Day One','Die gefrorenen Blitze','Entente Cordiale','Family of Spies','Father and Son','Female of the Species','Inherit the Wind','Its Your Move','Made for Each Other','Mihai Viteazul','Night School','Nighthawks','No Place Like Home','Once a Thief','Out of the Past','Scared Stiff','School Daze','Tango','The Ambulance','The Band Wagon','The Bank Job','The Chilling','The Gamblers','The Meeting','The Milkman','Weird Science'))
