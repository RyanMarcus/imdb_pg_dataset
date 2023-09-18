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
AND (mi1.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','OFM:Live','PCS:Panavision','PCS:Tohoscope','PCS:Totalscope','PFM:16 mm','PFM:8 mm','RAT:1.33 : 1','RAT:1.66 : 1'))
AND (mi2.info IN ('Action','Animation','Family','Fantasy','History','Horror','Music','Musical','Romance','Sci-Fi','Short','Western'))
AND (kt.kind in ('tv movie','video game','video movie'))
AND (rt.role in ('cinematographer','guest'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.82)','(#2.12)','(#5.17)','(#6.12)','(#6.20)','(#7.17)','A Place in the Sun','Anastasia','Arsenic and Old Lace','Bad Guy','Barabbas','Cold Turkey','Deadlock','Forever Amber','Full Circle','God Is My Co-Pilot','High Stakes','Johnny Belinda','Letter from an Unknown Woman','Million Dollar Baby','One Good Turn','Running Wild','Sweet Rosie OGrady','The Arizona Kid','The Contract','The Dream','The Good Companions','The Great Race','The Hunt','The Little Minister','The Mark of Cain','The Night Riders','The Runaways','The Stranger','The Swinger','Today','Tonka','Under Two Flags','With This Ring'))
