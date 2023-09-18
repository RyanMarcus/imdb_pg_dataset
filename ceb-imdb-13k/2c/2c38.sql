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
AND (it1.id in ('4'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Chinese','Croatian','French','Italian','Korean','None','Norwegian','Slovak','Spanish','Vietnamese'))
AND (mi2.info IN ('Albuquerque, New Mexico, USA','Buenos Aires, Federal District, Argentina','China','Dublin, County Dublin, Ireland','Houston, Texas, USA','London, England, UK','Long Beach, California, USA','Madrid, Spain','New Jersey, USA','New Orleans, Louisiana, USA','North Hollywood, Los Angeles, California, USA','Pasadena, California, USA','Portland, Oregon, USA','Rio de Janeiro, Rio de Janeiro, Brazil','Switzerland'))
AND (kt.kind in ('episode','movie','tv movie','tv series'))
AND (rt.role in ('actor','cinematographer','editor','producer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.2047)','(#1.3289)','(#16.175)','(#3.73)','(#7.150)','(#8.74)','(#9.172)','(2003-07-18)','(2003-10-07)','(2006-07-14)','(2009-08-18)','(2011-02-13)','(2012-03-07)','Aflevering 6','Alaska','Cinema Suites: Long Beach, CA','Daisy','Eurovision sarki yarismasi','Free Love','Gone Fishing','In Confidence','Kinect Disneyland Adventures','Late Night with Conan OBrien: 10th Anniversary Special','Leila','Meltdown','My Househusband: Ikaw na!','Salem Witch Trials','The Emperors Club','The First Emperor','Una piedra en el camino','Wide Sargasso Sea','Young Hollywood Awards'))
