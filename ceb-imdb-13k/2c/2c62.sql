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
AND (mi2.info IN ('LAB:DuArt Film Laboratories Inc., New York, USA','LAB:Kinuta Laboratories, Tokyo, Japan','LAB:Technicolor','OFM:16 mm','OFM:Digital','OFM:Super 16','PCS:Digital Intermediate','PCS:Panavision','PCS:Redcode RAW','PCS:Techniscope','PFM:DVD-ROM','RAT:1.33 : 1','RAT:16:9 HD'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('editor'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.1142)','(#1.234)','(#1.400)','(#10.6)','(#4.89)','(#5.79)','(1996-11-07)','(2001-06-08)','(2002-12-22)','(2003-01-27)','(2004-06-06)','(2004-09-18)','(2005-08-02)','(2010-03-28)','(2010-11-07)','(2011-12-27)','Aubrey','BB05 Daily Show: Day 5','Back to One','Before a Fall','Bomberman Live: Battlefest','Buried','Drew Barrymore','Forsaken','Fortune 500 Man','Goon','Iron Sky','Let Me Count the Ways','Looking Good','Mega Python vs. Gatoroid','Open Fire','Queen Bee','School for Seduction','Someone to Watch Over Me','The Better Half','The Bonfire of the Vanities','The Briefcase','The Invisible Woman','The Lizzie McGuire Movie','The Lovely Bones','The Thin Red Line','Three for the Road','To the Death','Totalschaden','Walking the Dog','White Men Cant Jump','Wozzeck','Yesterdays Tomorrow','You Need to Watch Your Jokes, Guy'))
