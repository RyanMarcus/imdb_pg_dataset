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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Belgium:KT','Finland:K-18','Finland:S','Sweden:11','UK:18','USA:R','West Germany:12'))
AND (mi2.info IN ('Argentina','Belgium','Canada','France','India','Italy','Spain','UK','USA','West Germany'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('cinematographer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.23)','(#3.20)','(#6.23)','(#8.9)','A Star Is Born','Alibi','Anna Christie','Bad Company','Ben-Hur','Brother Can You Spare a Dime','Cavalcade','Checkmate','Court Martial','Das Lied der Matrosen','Der Feldherrnhügel','Devotion','Die Unbesiegbaren','Faces','Golden Girl','Hold Back the Dawn','Let Us Live','Line of Fire','Luther','Montserrat','Mr. District Attorney','Mr. Smith Goes to Washington','Na vseki kilometar','Neighbors','Nora','O.S.S.','One Life to Live','Quarta puntata','Reunion in France','TV or Not TV','The Court Jester','The Fugitives','The Gamble','The Inside Man','The Ladies Man','The Milkman','The Monster','The Peacemaker','The Razors Edge','Trial by Fire','Urlaub auf Ehrenwort','Volpone','With This Ring','Young Love'))
