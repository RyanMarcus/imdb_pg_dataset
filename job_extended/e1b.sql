SELECT min(t.title), max(t.production_year), min(cn.name)
FROM cast_info ci, title t, char_name cn
WHERE ci.movie_id =t.id AND cn.id=ci.person_role_id and t.kind_id = 3 AND ci.role_id = 1;
