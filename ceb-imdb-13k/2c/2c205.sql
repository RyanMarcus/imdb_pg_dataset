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
AND (it1.id in ('1'))
AND (it2.id in ('7'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('109','25','54','84','Germany:96','USA:20','USA:30','USA:8'))
AND (mi2.info IN ('LAB:Consolidated Film Industries (CFI), Hollywood (CA), USA','MET:300 m','OFM:16 mm','OFM:Video','PCS:CinemaScope','RAT:1.33 : 1','RAT:1.37 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','cinematographer','costume designer','guest'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.123)','(#1.28)','(#2.1)','(#2.20)','(#2.27)','(#2.49)','(#3.1)','(#3.24)','(#4.1)','(#4.16)','(#7.2)','A Friend in Need','Ambush','Bel Ami','Carry on Cowboy','Das verurteilte Dorf','Election 70','Fury','Gilda','Hostage','Lady by Choice','Marooned','Mutiny on the Bounty','Night Club','One Life to Live','Panic','Sanctuary','Shell Game','Sun Valley Serenade','The Baby','The Breaking Point','The Captain Hates the Sea','The Desert Fox: The Story of Rommel','The Eurovision Song Contest','The Executioners','The Guest','The Heiress','The Merchant of Venice','The Milkman','The Plunderers','The Tell-Tale Heart','The Tempest','The Victim','Topaze','Triple Cross'))
