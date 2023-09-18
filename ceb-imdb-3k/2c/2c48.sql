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
AND (it1.id in ('6'))
AND (it2.id in ('3'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('6-Track Stereo','DTS','DTS-ES','Datasat','SDDS','Silent','Stereo'))
AND (mi2.info IN ('Adult','Comedy','Horror','Musical','Mystery','Reality-TV','Sci-Fi','Short','Sport'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video game','video movie'))
AND (rt.role in ('actor'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
AND (t.title in ('(#1.4428)','(#1.5371)','(#1.9807)','(#17.20)','(#3.7)','(#6.135)','(#6.186)','(#7.64)','(2004-07-19)','(2004-12-22)','(2013-02-01)','Adventures of Gary Leon at Kuting','An Ill Wind','Autopsy','Black Dawn','Chris','Derby','DreamKeeper','Ella Enchanted','Fancypants','Field of Dreams','Forget Me Not','Less Is More','Lost Causes','Marisol','Mr. Nobody','Never Surrender','Oyster Farmer','Replay','Reward','Sexual Harassment','Stilyagi','Taking Chance','Tanging yaman','The Bonds of Matrimony','The Date','The Great Gatsby','The Life Before Her Eyes','The Royal Tenenbaums','The Wizard','Tom Arnold/Tupac Shakur','Town & Country','Twisted Sisters','Vaterliebe','Vicious Circle','Wild Horses','Wolves'))
