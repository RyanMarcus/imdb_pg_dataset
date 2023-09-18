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
AND (it2.id in ('6'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Adult','Adventure','Game-Show','History','Western'))
AND (mi2.info IN ('70 mm 6-Track','Mono','Silent','Stereo'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('costume designer','guest','production designer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.19)','(#1.33)','(#1.83)','(#2.10)','(#3.3)','(#6.17)','After the Thin Man','Around the World in Eighty Days','Borderline','Bottoms Up','College Holiday','Der müde Theodor','Die Ratten','Double Date','Dream Girl','Fedora','Funny Girl','Fünfter Teil','Gang War','Going Home','Her Highness and the Bellboy','Justice','Lady Luck','Let em Have It','Lili','Love and Marriage','Navy Blues','Now You See Him, Now You Dont','Parnell','Part 3','Partners','Shine on Harvest Moon','Stakeout','Target','The Accident','The Buccaneer','The Charge of the Light Brigade','The Edge of Night','The Fanatics','The Haunted House','The Inside Man','The Love God?','The Mission','The Petty Girl','The Storm','Up the Junction'))
