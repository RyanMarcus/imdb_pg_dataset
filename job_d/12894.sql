SELECT MIN(k.keyword) AS movie_keyword,
       MIN(n.name) AS actor_name,
       MIN(t.title) AS hero_movie
FROM cast_info AS ci,
     keyword AS k,
     movie_keyword AS mk,
     name AS n,
     title AS t
WHERE k.id = mk.keyword_id
  AND t.id = mk.movie_id
  AND t.id = ci.movie_id
  AND ci.movie_id = mk.movie_id
  AND n.id = ci.person_id
  AND k.keyword IN ('based-on-comic',
'violence',
'murder',
'fight',
'superhero',
'murder',
'murder',
'hand-to-hand-combat')
AND n.name like '%Johnson,%'
AND t.production_year > 2005;