--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 11.1

--
-- Name: aka_name; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE aka_name (
    id integer NOT NULL,
    person_id integer NOT NULL,
    name nvarchar(max),
    imdb_index nvarchar(3),
    name_pcode_cf nvarchar(11),
    name_pcode_nf nvarchar(11),
    surname_pcode nvarchar(11),
    md5sum nvarchar(65)
);


--
-- Name: aka_title; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE aka_title (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    title nvarchar(max),
    imdb_index nvarchar(4),
    kind_id integer NOT NULL,
    production_year integer,
    phonetic_code nvarchar(5),
    episode_of_id integer,
    season_nr integer,
    episode_nr integer,
    note nvarchar(72),
    md5sum nvarchar(32)
);


--
-- Name: cast_info; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE cast_info (
    id integer NOT NULL,
    person_id integer NOT NULL,
    movie_id integer NOT NULL,
    person_role_id integer,
    note nvarchar(max),
    nr_order integer,
    role_id integer NOT NULL
);


--
-- Name: char_name; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE char_name (
    id integer NOT NULL,
    name nvarchar(max) NOT NULL,
    imdb_index nvarchar(2),
    imdb_id integer,
    name_pcode_nf nvarchar(5),
    surname_pcode nvarchar(5),
    md5sum nvarchar(32)
);


--
-- Name: comp_cast_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE comp_cast_type (
    id integer NOT NULL,
    kind nvarchar(32) NOT NULL
);


--
-- Name: company_name; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE company_name (
    id integer NOT NULL,
    name nvarchar(max) NOT NULL,
    country_code nvarchar(6),
    imdb_id integer,
    name_pcode_nf nvarchar(5),
    name_pcode_sf nvarchar(5),
    md5sum nvarchar(32)
);


--
-- Name: company_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE company_type (
    id integer NOT NULL,
    kind nvarchar(32)
);


--
-- Name: complete_cast; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE complete_cast (
    id integer NOT NULL,
    movie_id integer,
    subject_id integer NOT NULL,
    status_id integer NOT NULL
);


--
-- Name: info_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE info_type (
    id integer NOT NULL,
    info nvarchar(32) NOT NULL
);


--
-- Name: keyword; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE keyword (
    id integer NOT NULL,
    keyword nvarchar(max) NOT NULL,
    phonetic_code nvarchar(5)
);


--
-- Name: kind_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE kind_type (
    id integer NOT NULL,
    kind nvarchar(15)
);


--
-- Name: link_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE link_type (
    id integer NOT NULL,
    link nvarchar(32) NOT NULL
);


--
-- Name: m_movie_info; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE m_movie_info (
    id integer,
    movie_id integer,
    info_type_id integer,
    minfo integer,
    info nvarchar(max)
);


--
-- Name: movie_companies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE movie_companies (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    company_id integer NOT NULL,
    company_type_id integer NOT NULL,
    note nvarchar(max)
);


--
-- Name: movie_info; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE movie_info (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info nvarchar(max) NOT NULL,
    note nvarchar(max)
);


--
-- Name: movie_info_idx; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE movie_info_idx (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info nvarchar(max) NOT NULL,
    note nvarchar(max)
);


--
-- Name: movie_keyword; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE movie_keyword (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    keyword_id integer NOT NULL
);


--
-- Name: movie_link; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE movie_link (
    id integer NOT NULL,
    movie_id integer NOT NULL,
    linked_movie_id integer NOT NULL,
    link_type_id integer NOT NULL
);


--
-- Name: name; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE name (
    id integer NOT NULL,
    name nvarchar(max) NOT NULL,
    imdb_index nvarchar(9),
    imdb_id integer,
    gender nvarchar(1),
    name_pcode_cf nvarchar(5),
    name_pcode_nf nvarchar(5),
    surname_pcode nvarchar(5),
    md5sum nvarchar(32)
);


--
-- Name: person_info; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE person_info (
    id integer NOT NULL,
    person_id integer NOT NULL,
    info_type_id integer NOT NULL,
    info nvarchar(max) NOT NULL,
    note nvarchar(max)
);


--
-- Name: role_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE role_type (
    id integer NOT NULL,
    role nvarchar(32) NOT NULL
);


--
-- Name: title; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE title (
    id integer NOT NULL,
    title nvarchar(max) NOT NULL,
    imdb_index nvarchar(5),
    kind_id integer NOT NULL,
    production_year integer,
    imdb_id integer,
    phonetic_code nvarchar(5),
    episode_of_id integer,
    season_nr integer,
    episode_nr integer,
    series_years nvarchar(49),
    md5sum nvarchar(32)
);


--
-- PostgreSQL database dump complete
--

