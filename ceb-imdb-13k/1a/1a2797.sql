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
AND (it2.id in ('17'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('Bavaria Filmstudios, Geiselgasteig, Grünwald, Bavaria, Germany','Big Ben, Houses of Parliament, Westminster, London, England, UK','Columbia/Warner Bros. Ranch - 411 North Hollywood Way, Burbank, California, USA','Denham Studios, Denham, Buckinghamshire, England, UK','Houses of Parliament, Westminster, London, England, UK','Madrid, Spain','Mexico','Red Rock Canyon State Park - Highway 14, Cantil, California, USA','Santa Catalina Island, Channel Islands, California, USA','Stage 27A, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 5, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Stage 9, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','USA'))
AND (mi2.info IN ('Last show of the series.','One of over 700 Paramount Productions, filmed between 1929 and 1949, which were sold to MCA/Universal in 1958 for television distribution, and have been owned and controlled by Universal ever since.'))
AND (kt.kind in ('episode','movie','tv series'))
AND (rt.role in ('composer'))
AND (n.gender IS NULL)
AND (t.production_year <= 1975)
AND (t.production_year >= 1925)
