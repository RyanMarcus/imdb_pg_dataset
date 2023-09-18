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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Australia','Finland','Georgia','Germany','Norway','Peru','Serbia','South Africa','Spain','Switzerland','Taiwan','UK','United Arab Emirates','West Germany'))
AND (mi2.info IN ('CAM:Canon 5D Mark II','CAM:Panavision Cameras and Lenses','CAM:Panavision Panaflex Platinum, Panavision Primo Lenses','LAB:DeLuxe','MET:300 m','MET:600 m','OFM:16 mm','PCS:HDCAM','PCS:HDV','PCS:Shawscope','PCS:Super 16','PFM:16 mm','RAT:1.66 : 1','RAT:1.85 : 1','RAT:2.20 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','director','guest'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.177)','(#1.9328)','(#10.3)','(#15.47)','(#2.98)','(#8.72)','(1995-05-24)','(1999-06-09)','(2002-07-04)','(2006-07-17)','(2007-05-05)','(2009-09-29)','(2010-02-09)','(2010-03-20)','...And a Vintage Warplane','Anna','Dr. Dolittle 2','Hired Wife','Hooked','Ill Do Anything','Killing Them Softly','Lifes a Beach','Live Results Show: One Contestant Eliminated','Maging sino ka man','Magnet','Mission: Impossible','Moving Pictures','No Other Love','Of All the Things','One Day in the Valley','One Last Thing...','Primicias','Russian Roulette','Shin sangoku musô 5','Snow Angels','The Dilemma','The More Things Change','To Have and to Hold','Tori Tortures Teacher','When the Levee Breaks'))
