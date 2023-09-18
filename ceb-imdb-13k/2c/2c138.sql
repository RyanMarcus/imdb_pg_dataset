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
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Czech','Danish','Dutch','English','Georgian','German','Hungarian','Mandarin','None','Norwegian','Persian','Polish','Portuguese','Serbo-Croatian','Swedish'))
AND (mi2.info IN ('101','104','15','25','50','68','72','74','77','8','84','88','USA:10'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor','actress','cinematographer','miscellaneous crew','production designer'))
AND (n.gender IN ('f'))
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.40)','(#1.69)','(#1.82)','(#2.28)','(#4.18)','(#5.1)','A Day at the Races','Carmen','Command Decision','Der kaukasische Kreidekreis','Face to Face','Julie','Keep Smiling','Magnum Force','Off Limits','Paris brûle-t-il?','Puppy Love','Quarantine','Resurrection','Revenge','The Burglar','The Country Doctor','The Facts of Life','The Hound of the Baskervilles','The Scapegoat','The Set-Up','The Shakiest Gun in the West','Tower of London','Vanity Fair','Wells Fargo','Wo Du hin gehst...','You Cant Escape Forever','Zweiter Teil'))
