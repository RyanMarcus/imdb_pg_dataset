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
AND (it1.id in ('18'))
AND (it2.id in ('1'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Amsterdam, Noord-Holland, Netherlands','Copenhagen, Denmark','Dijon Street, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','France','Germany','London, England, UK','Morocco','Oahu, Hawaii, USA','Sydney, New South Wales, Australia','Universal Studios - 100 Universal City Plaza, Universal City, California, USA'))
AND (mi2.info IN ('150','19','5','57','7','USA:13','USA:15','USA:17','USA:70','USA:8','USA:90','USA:98'))
AND (kt.kind in ('episode','tv movie','tv series','video movie'))
AND (rt.role in ('director'))
AND (n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1975)
