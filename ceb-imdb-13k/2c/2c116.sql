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
AND (it1.id in ('3'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Comedy','Documentary','Mystery','Romance','Short'))
AND (mi2.info IN ('CAM:Arri Alexa','CAM:Canon XL-2','CAM:Moviecam Cameras','CAM:Red Epic','CAM:Red One Camera','LAB:FotoKem Laboratory, Burbank (CA), USA','LAB:Laboratoires Éclair, Paris, France','PCS:Digital','RAT:1.78 : 1','RAT:2.20 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer'))
AND (n.gender IN ('f') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.32)','(#1.3445)','(#1.4901)','(#1.4937)','(#1.5409)','(#29.2)','(#3.221)','(#8.42)','(1997-02-07)','(2002-03-14)','(2003-04-30)','(2004-07-10)','(2005-03-20)','(2009-06-03)','(2011-02-23)','(2011-09-29)','(2011-10-16)','(2012-09-03)','Bigger Stronger Faster*','Driving Lessons','Factotum','Found Money','Gloria','Its Kind of a Funny Story','Love and Other Disasters','Ned Kelly','Patriot Games','Push Comes to Shove','Stateside','Sunshine Cleaning','The Bracelet of Bordeaux','The Darkness','The Frontier Boys','The Killing of a Japanese Bookie','The Need for Speed','The Rehearsal','Time Out of Mind','Toda la verdad','Verdad al descubierto','Whos the Daddy?'))
