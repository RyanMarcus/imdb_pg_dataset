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
AND (it1.id in ('5'))
AND (it2.id in ('4'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Argentina:18','Canada:PG','India:U','Italy:VM18','Sweden:15','USA:TV-G'))
AND (mi2.info IN ('Dutch','English','Finnish','French','Hindi','Italian','Latin','Russian','Swedish'))
AND (kt.kind in ('movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('director','miscellaneous crew','production designer','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
AND (t.title in ('(#1.123)','(#1.24)','(#1.46)','(#1.56)','(#1.70)','(#2.17)','(#3.22)','(#8.5)','Austerlitz','Behind the Mask','Body and Soul','Brotherly Love','Caesars Wife','Der Rosenkavalier','Der Unfall','False Witness','Ghost Catchers','Golden Boy','Jailhouse Rock','Jeanne Eagels','Knock on Any Door','Marriage','Night of Terror','Ricochet','Roman Holiday','Skin Game','Strange Cargo','Stranger in Town','TV-Avisen','The Auction','The Band Wagon','The Front Page','The Gangs All Here','The Great Gatsby','The Great Impersonation','The Hard Way','The Hitler Gang','The Honeymoon','The Invaders','The Pride of the Yankees','The Reward','The Story of Will Rogers','They Were Expendable','Thérèse Raquin','Untamed','Unusual Occupations','War Games'))
