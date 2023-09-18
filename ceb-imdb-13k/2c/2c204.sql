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
AND (it1.id in ('18'))
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('CBS Studio 50, New York City, New York, USA','General Service Studios - 1040 N. Las Palmas, Hollywood, Los Angeles, California, USA','Lisbon, Portugal','London, England, UK','Mexico','Montréal, Québec, Canada','Revue Studios, Hollywood, Los Angeles, California, USA','Shepperton Studios, Shepperton, Surrey, England, UK','Spain','Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA'))
AND (mi2.info IN ('Austria','Belgium','Brazil','Canada','Finland','Japan','Netherlands','Philippines','Poland','Portugal','Sweden','UK','Yugoslavia'))
AND (kt.kind in ('episode','movie','tv movie','video game','video movie'))
AND (rt.role in ('cinematographer','composer','guest','miscellaneous crew'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1990)
AND (t.production_year >= 1950)
AND (t.title in ('(#1.141)','(#1.326)','(#1.410)','(#1.46)','(#1.82)','(#1.890)','(#1.969)','(#2.39)','(#6.13)','(#6.20)','(#7.3)','A Night to Remember','Adam','Assassin','Avenging Angel','Caged Fury','Competition','Dallas Cowboys vs. Washington Redskins','Del 4','Downtown','Empire of Ash','Ghostbusters II','Impasse','Jigsaw','Jo Jo Dancer, Your Life Is Calling','Kidnapped','La ciociara','Lamb to the Slaughter','Lawrence of Arabia','Lethal Weapon 2','Lies','Love Me or Leave Me','Masterpiece','One on One','Quo Vadis','Roadie','Running Scared','Spring Fever','Strange Bedfellows','Sunset','Testament','The Boys','The Idol','The Red Shoes','The Source','Touch and Go','Working Girls','World Championship Wrestling'))
