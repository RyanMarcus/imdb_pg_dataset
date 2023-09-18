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
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Bengali','Cantonese','Czech','Danish','English','German','Hindi','Serbo-Croatian','Slovak','Spanish','Turkish'))
AND (mi2.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','PCS:CinemaScope','PCS:Panavision','PFM:70 mm','RAT:1.37 : 1','RAT:1.66 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer','guest','miscellaneous crew'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.10)','(#1.211)','(#1.270)','(#1.445)','(#1.566)','(#1.638)','(#1.667)','(#1.818)','(#1.968)','(#2.59)','(#8.7)','A Matter of Honor','And Then There Were None','Assassination','Big Daddy','Blood Brothers','Buried Alive','Caged Fury','Fanny Hill','Flying Blind','Fukkatsu no hi','Happy Birthday','Mastermind','Paternity','Poker','Prisoner','Radio Days','Redemption','Salvage','Scrooged','Separation','Studs Lonigan','The Las Vegas Story','The Long Wait','The Reunion','The Snows of Kilimanjaro','The Son Also Rises','Thérèse Raquin'))
