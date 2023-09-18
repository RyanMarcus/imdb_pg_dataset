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
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Bulgarian','Czech','Hungarian','Japanese','Korean','Romanian'))
AND (mi2.info IN ('Action','Animation','Crime','Fantasy','Horror','Sport'))
AND (kt.kind in ('movie','tv movie','tv series','video movie'))
AND (rt.role in ('actor','composer','writer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1875)
AND (t.title in ('(#1.4)','(#3.1)','(#3.8)','(#5.16)','(#6.10)','Above Suspicion','All That Glitters','April Fool','Around the World','Beauty and the Beast','Bright Lights','Claudia','Dirty Harry','Gypsy','Hangmen Also Die!','Heidi','Hot Water','Hunted','Jam Session','Johnny Belinda','Kill or Cure','Leuchtfeuer','Los miserables','Once Upon a Time','Out of This World','Rich Man, Poor Man','Samurai','Scene of the Crime','Six Bridges to Cross','Smoke Screen','Tartuffe','The Abominable Snowman','The Big Parade of Comedy','The Call of the Wild','The Fighter','The Green Pastures','The Guiding Light','The Mark of Cain','The Noose','The Prize','The Roaring Twenties','The Ten Commandments','Vendetta','Yellow Jack'))
