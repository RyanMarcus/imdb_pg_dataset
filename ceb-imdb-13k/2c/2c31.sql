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
AND (mi1.info IN ('Danish','Hebrew','Hindi','Italian','Korean','Mandarin'))
AND (mi2.info IN ('LAB:Technicolor, USA','MET:600 m','OFM:35 mm','PCS:Kinescope','PCS:Techniscope','PFM:Video','RAT:1.20 : 1','RAT:2.35 : 1'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('editor','writer'))
AND (n.gender IN ('m'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#2.3)','(#5.16)','Arabian Nights','Arena','Bad Company','Blazing Saddles','Collision Course','Cry Wolf','Dead or Alive','Diane','Die Brücke','Dillinger','Double Trouble','Drums of Fu Manchu','Giuseppe Verdi','Gone with the Wind','Government Girl','Its a Small World','Jack the Ripper','Lilith','Oceans Eleven','Part 3','Rescue','Riffraff','Rio Rita','Runaway','Shichinin no samurai','Sister Kenny','The Enchanted','The Experiment','The Gunman','The Inheritance','The Lottery Lover','The Reluctant Dragon','The Scavengers','The Tiger Woman','Universal Newsreel','Victory','World of Sport','You Cant Take It with You'))
