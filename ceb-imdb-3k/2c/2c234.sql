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
AND (it2.id in ('8'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('1','108','118','65','88','Germany:42','UK:3','USA:52','USA:83','USA:99'))
AND (mi2.info IN ('Czech Republic','Greece','Italy','Netherlands','Philippines','Portugal','Taiwan','USA','Venezuela'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor'))
AND (n.gender IN ('f','m'))
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
AND (t.title in ('(#1.6122)','(#1.659)','(#15.26)','(#16.23)','(#17.58)','(#17.94)','(#21.8)','(#9.120)','(1993-12-14)','(2000-01-05)','(2003-11-25)','(2004-03-15)','(2010-04-08)','(2013-01-14)','2007 MTV Movie Awards','Anita','Big Boss','Burnout','Cocktail','Coming to Terms','Decline','Delta','Dreams and Schemes','Friend or Foe?','Go Out with a Bang','Monster in the Closet','Nothing Lasts Forever','Now You See It...','Occams Razor','On the Wings of Love','Pervirella','Ramona and Beezus','Running on Empty Dreams','Science Fiction','Some Assembly Required','Tastes Like Chicken','The Cookout','The Curious Case of Benjamin Button','The Rocketeer','The Shadows','The Winslow Boy','Threes Company','Thuiskomst','Trevor & Tricia','Two Families','Vegas, Baby!','War of the Worlds','Wilbur Wants to Kill Himself','Zimmer frei'))
