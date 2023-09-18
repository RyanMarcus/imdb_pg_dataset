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
AND (it1.id in ('2'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Black and White','Color'))
AND (mi2.info IN ('CAM:Canon XL-1','CAM:Panaflex Camera and Lenses by Panavision','CAM:Panasonic AG-DVX100','CAM:Panasonic AG-HVX200','LAB:Boyana Film Laboratory, Sofia, Bulgaria','LAB:FotoKem Laboratory, Burbank (CA), USA','LAB:Technicolor, USA','OFM:8 mm','OFM:Live','OFM:Redcode RAW','PFM:16 mm','RAT:1.33 : 1','RAT:16:9 HD'))
AND (kt.kind in ('movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','writer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.9665)','(#1.994)','(#16.9)','(2004-10-18)','(2006-07-16)','(2010-02-13)','(2010-05-13)','54','Bakit di totohanin','Camelot','Can We Do This?','Congo','Crossfire','Dancin Homer','Defiance','Dolly','Familiesagaen de syv søstre','Feels Like Rain','Folge 11','George Whites Scandals','Happy Birthday 2 You','Herbie Fully Loaded','Hit','In the Still of the Night','La decisión','Little White Lies','Points','Rivales','Scream 4','St. Trinians','The Beastmaster','The Contender','The Hoodlum Saint','The Ring Two','The Rose','Top 11 Perform','Vertrauensbruch'))
