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
AND (it2.id in ('2'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('12','16','23','25','68','75','76','89','94'))
AND (mi2.info IN ('Black and White','Color'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game'))
AND (rt.role in ('actor','costume designer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.5)','(#1.84)','(#4.26)','(#6.11)','(#8.6)','All at Sea','Dead or Alive','Der müde Theodor','Here Come the Girls','Holnap lesz fácán','Jack the Ripper','Kdyby tisíc klarinetu','Off Limits','Remontons les Champs-Élysées','Rio Grande','Safari','Samson','See No Evil','She Couldnt Say No','Si Paris nous était conté','Side Street','The Battle','The Experiment','The Ransom','The Shakedown','The Spider','The System','The Visitors','The Witching Hour','You Came Along'))
