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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('100','102','120','13','17','56','60','63','68','69','USA:18','USA:25','USA:80'))
AND (mi2.info IN ('4-Track Stereo','Mono','Silent'))
AND (kt.kind in ('movie','tv movie','tv series','video game'))
AND (rt.role in ('actor','actress','editor','guest'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.101)','(#1.42)','(#1.45)','(#1.76)','(#1.88)','(#2.18)','(#5.9)','Around the World','Blue Skies','Chûkon giretsu - Jitsuroku Chûshingura','Cleopatra','Cops and Robbers','Court Martial','Dobrý voják Svejk','Game 7','Hollywood Hotel','Just for You','Kdyby tisíc klarinetu','Law and Disorder','Nous sommes tous des assassins','Oliver Twist','Second Chance','The Auction','The Candidate','The Canterville Ghost','The Eurovision Song Contest','The Experiment','The Guiding Light','The Hunter','The Last Hurrah','The Letter','The Painted Stallion','The Pied Piper','The Tunnel','Thérèse Raquin','Till the Clouds Roll By'))
