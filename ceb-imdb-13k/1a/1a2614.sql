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
AND (it1.id in ('17'))
AND (it2.id in ('18'))
AND t.kind_id = kt.id
AND ci.person_id = n.id
AND ci.role_id = rt.id
AND (mi1.info IN ('After the race, John Vito and Jill (Season 3) hosted a show that promoted Singapore tourism.','As of Leg 4 (Season 11), Danielle became the first person to finish higher than their original race. As of Leg 8 Charla & Mirna became the first team to finish higher than their original race.','At the age of 14, Rolly Weaver (Season 8) is the youngest person to ever win a leg and to make it to the Final Three.','In Season 9, three new countries got their first visit from the Race: Greece, Oman, and Japan, as well as the Sicily region of Italy.','Jill Aquilino originally applied with her brother for the first season of The Amazing Race.','John Keoghan, Phil Keoghan (qv)s father, was the local greeter at the Te Puke Pit Stop in New Zealand in Season 13.','Linda Weaver (Season 8) reluctantly participated in two challenges directly related to racing. One was a go-kart race in Arizona, and the other involved traveling around Talladega Superspeedway in a bicycle. Weavers husband, Roy, was killed in an accident when he was run over by a race car at Daytona International Speedway in 2004.','On Leg 8, Colin (Season 5) almost went to jail having an argument with the cab driver. Colin wanted to give the cab driver $50, but the cab driver needed $100.','Season 5 featured the first African-American and the oldest couple to win the Race (Chip & Kim), as well as the first team to win without using a Fast Foward.','The "Sledging" Detour at Okere Falls in Rotorua, New Zealand in Episode 10 is no longer a tourist activity. It was shut down by New Zealand authorities shortly after the show screened and interest in it increased, because it was deemed not safe enough. It has now reopened and is safe.'))
AND (mi2.info IN ('Buenos Aires, Federal District, Argentina','Downtown, Los Angeles, California, USA','Ealing Studios, Ealing, London, England, UK','Istanbul, Turkey','Louisiana, USA','Moab, Utah, USA','New York, USA','Pittsburgh, Pennsylvania, USA','Seattle, Washington, USA','Sony Pictures Studios - 10202 W. Washington Blvd., Culver City, California, USA','Stage 25, Warner Brothers Burbank Studios - 4000 Warner Boulevard, Burbank, California, USA','Upper Hutt, Wellington, New Zealand'))
AND (kt.kind in ('episode','movie','tv movie','tv series','video movie'))
AND (rt.role in ('actor','cinematographer','editor','writer'))
AND (n.gender IN ('m') OR n.gender IS NULL)
AND (t.production_year <= 2015)
AND (t.production_year >= 1990)
