SELECT min(t.title), min(t.production_year), min(cn.name)
FROM cast_info ci, title t, char_name cn
WHERE ci.movie_id =t.id AND cn.id=ci.person_role_id and t.kind_id = 1 AND ci.role_id = 2;
