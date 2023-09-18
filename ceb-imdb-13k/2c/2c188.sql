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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Chinese','Croatian','French','Indonesian','Persian','Spanish','Telugu','Yoruba'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','tv movie','tv series','video game','video movie'))
AND (rt.role in ('composer','miscellaneous crew','producer','production designer','writer'))
AND (n.gender IN ('f','m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.10007)','(#1.3584)','(#1.4906)','(#1.4939)','(#1.5095)','(#1.5503)','(#1.5611)','(#1.676)','(#2.137)','(#5.6)','(1999-04-08)','(2001-09-05)','(2002-12-12)','(2003-11-24)','(2007-01-16)','(2010-08-21)','(2010-09-14)','(2011-08-26)','(2012-10-14)','(2012-11-09)','Anne Hathaway/Florence and the Machine','BearCity','Blank Slate','Bob Roberts','Catch Me... Im in Love','Celebrity Sex Tape','Die Another Day','Dyesebel','El amor y otras desgracias','Hells Gate','How Will the Nominees Cope with Their Other Housemates?','MTV Video Music Awards 2002','Now You See Me, Now You Dont','Patrick','Rain of the Children','Return of the King','Saving Lincoln','Surprise, Surprise','Sylvia','Tali-Ihantala 1944','The Housemates Amuse Themselves with Different Pranks','The Look of Love','The Penalty Box','The Survivors','Vortex'))
