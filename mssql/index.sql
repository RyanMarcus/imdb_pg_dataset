CREATE INDEX company_id_movie_companies ON movie_companies (company_id);

CREATE INDEX company_type_id_movie_companies ON movie_companies (company_type_id);

CREATE INDEX info_type_id_movie_info ON movie_info (info_type_id);

CREATE INDEX info_type_id_movie_info_idx ON movie_info_idx (info_type_id);

CREATE INDEX info_type_id_person_info ON person_info (info_type_id);

CREATE INDEX keyword_id_movie_keyword ON movie_keyword (keyword_id);

CREATE INDEX kind_id_aka_title ON aka_title (kind_id);

CREATE INDEX kind_id_title ON title (kind_id);

CREATE INDEX link_type_id_movie_link ON movie_link (link_type_id);

CREATE INDEX linked_movie_id_movie_link ON movie_link (linked_movie_id);

CREATE INDEX movie_id_aka_title ON aka_title (movie_id);

CREATE INDEX movie_id_cast_info ON cast_info (movie_id);

CREATE INDEX movie_id_complete_cast ON complete_cast (movie_id);

CREATE INDEX movie_id_movie_companies ON movie_companies (movie_id);

CREATE INDEX movie_id_movie_info ON movie_info (movie_id);

CREATE INDEX movie_id_movie_info_idx ON movie_info_idx (movie_id);

CREATE INDEX movie_id_movie_keyword ON movie_keyword (movie_id);

CREATE INDEX movie_id_movie_link ON movie_link (movie_id);

CREATE INDEX person_id_aka_name ON aka_name (person_id);

CREATE INDEX person_id_cast_info ON cast_info (person_id);

CREATE INDEX person_id_person_info ON person_info (person_id);

CREATE INDEX person_role_id_cast_info ON cast_info (person_role_id);

CREATE INDEX role_id_cast_info ON cast_info (role_id);
