SELECT MIN(n.name) AS cast_member,
       MIN(t.title) AS complete_dynamic_hero_movie
FROM complete_cast AS cc,
     comp_cast_type AS cct1,
     comp_cast_type AS cct2,
     char_name AS chn,
     cast_info AS ci,
     keyword AS k,
     kind_type AS kt,
     movie_keyword AS mk,
     name AS n,
     title AS t
WHERE cct1.kind = 'cast'
  AND cct2.kind LIKE '%complete%'
  AND chn.name IS NOT NULL
  AND kt.kind = 'movie'
  AND kt.id = t.kind_id
  AND t.id = mk.movie_id
  AND t.id = ci.movie_id
  AND t.id = cc.movie_id
  AND mk.movie_id = ci.movie_id
  AND mk.movie_id = cc.movie_id
  AND ci.movie_id = cc.movie_id
  AND chn.id = ci.person_role_id
  AND n.id = ci.person_id
  AND k.id = mk.keyword_id
  AND cct1.id = cc.subject_id
  AND cct2.id = cc.status_id
  AND (chn.name like '%bar%'
OR chn.name like '%Agente%')
AND t.production_year > 1964
AND k.keyword IN ('violence',
'based-on-comic',
'laser',
'murder-in-title',
'marvel-cinematic-universe',
'violence',
'blood',
'based-on-novel',
'murder',
'barcelona-spain');