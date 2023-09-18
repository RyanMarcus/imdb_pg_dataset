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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CAM:Arri Alexa','CAM:Canon 5D Mark II','CAM:Canon XL-1','LAB:Fotofilm S.A., Madrid, Spain','LAB:Technicolor','MET:500 m','OFM:35 mm','PCS:Digital','PCS:Shawscope','PFM:70 mm','PFM:DCP','RAT:1.44 : 1'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('editor'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.11635)','(#1.4795)','(#1.536)','(#1.651)','(#4.198)','(#6.181)','(2000-02-27)','(2002-09-25)','(2004-02-23)','(2011-03-28)','(2012-12-16)','Black Noise','Bullfighter','Charlotte Löwensköld','Defining Moments','Der Schuh des Manitu','Enchanted','French Kiss','In extremis','Last Train Home','Mawaru meido in Wario','Millennium','Rascals','Roxanne','Siege','Stephanie','The 55th Annual Grammy Awards','The New Car','The Power of Few','The Stud','The Unknown','To tama','Tom Hanks','Welcome to the Club'))
