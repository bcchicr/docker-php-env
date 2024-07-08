--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: article_article_tag; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.article_article_tag (
    id bigint NOT NULL,
    article_id bigint NOT NULL,
    article_tag_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.article_article_tag OWNER TO "zarya-one";

--
-- Name: article_article_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.article_article_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_article_tag_id_seq OWNER TO "zarya-one";

--
-- Name: article_article_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.article_article_tag_id_seq OWNED BY public.article_article_tag.id;


--
-- Name: article_sections; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.article_sections (
    id bigint NOT NULL,
    article_id bigint NOT NULL,
    header text,
    content text,
    slider_images jsonb,
    slider_on_top boolean,
    footer text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.article_sections OWNER TO "zarya-one";

--
-- Name: article_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.article_sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_sections_id_seq OWNER TO "zarya-one";

--
-- Name: article_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.article_sections_id_seq OWNED BY public.article_sections.id;


--
-- Name: article_tags; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.article_tags (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.article_tags OWNER TO "zarya-one";

--
-- Name: article_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.article_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_tags_id_seq OWNER TO "zarya-one";

--
-- Name: article_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.article_tags_id_seq OWNED BY public.article_tags.id;


--
-- Name: articles; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.articles (
    id bigint NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    cover_path character varying(255) NOT NULL,
    inner_image_path character varying(255) NOT NULL,
    footer text,
    sidebar text,
    is_favorite boolean DEFAULT false NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.articles OWNER TO "zarya-one";

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_id_seq OWNER TO "zarya-one";

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: document_categories; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.document_categories (
    id bigint NOT NULL,
    documentation_tab_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.document_categories OWNER TO "zarya-one";

--
-- Name: document_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.document_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.document_categories_id_seq OWNER TO "zarya-one";

--
-- Name: document_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.document_categories_id_seq OWNED BY public.document_categories.id;


--
-- Name: documentation_products; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.documentation_products (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.documentation_products OWNER TO "zarya-one";

--
-- Name: documentation_products_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.documentation_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.documentation_products_id_seq OWNER TO "zarya-one";

--
-- Name: documentation_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.documentation_products_id_seq OWNED BY public.documentation_products.id;


--
-- Name: documentation_tabs; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.documentation_tabs (
    id bigint NOT NULL,
    documentation_product_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.documentation_tabs OWNER TO "zarya-one";

--
-- Name: documentation_tabs_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.documentation_tabs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.documentation_tabs_id_seq OWNER TO "zarya-one";

--
-- Name: documentation_tabs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.documentation_tabs_id_seq OWNED BY public.documentation_tabs.id;


--
-- Name: documents; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.documents (
    id bigint NOT NULL,
    document_category_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    file_path character varying(255) NOT NULL,
    cover_path character varying(255) NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.documents OWNER TO "zarya-one";

--
-- Name: documents_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.documents_id_seq OWNER TO "zarya-one";

--
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.documents_id_seq OWNED BY public.documents.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO "zarya-one";

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO "zarya-one";

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: gas_agent_situation; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.gas_agent_situation (
    id bigint NOT NULL,
    gas_agent_id bigint NOT NULL,
    situation_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.gas_agent_situation OWNER TO "zarya-one";

--
-- Name: gas_agent_situation_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.gas_agent_situation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gas_agent_situation_id_seq OWNER TO "zarya-one";

--
-- Name: gas_agent_situation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.gas_agent_situation_id_seq OWNED BY public.gas_agent_situation.id;


--
-- Name: gas_agents; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.gas_agents (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.gas_agents OWNER TO "zarya-one";

--
-- Name: gas_agents_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.gas_agents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gas_agents_id_seq OWNER TO "zarya-one";

--
-- Name: gas_agents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.gas_agents_id_seq OWNED BY public.gas_agents.id;


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO "zarya-one";

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO "zarya-one";

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO "zarya-one";

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO "zarya-one";

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: module_situation; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.module_situation (
    id bigint NOT NULL,
    module_id bigint NOT NULL,
    situation_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.module_situation OWNER TO "zarya-one";

--
-- Name: module_situation_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.module_situation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.module_situation_id_seq OWNER TO "zarya-one";

--
-- Name: module_situation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.module_situation_id_seq OWNED BY public.module_situation.id;


--
-- Name: module_types; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.module_types (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.module_types OWNER TO "zarya-one";

--
-- Name: module_types_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.module_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.module_types_id_seq OWNER TO "zarya-one";

--
-- Name: module_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.module_types_id_seq OWNED BY public.module_types.id;


--
-- Name: modules; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.modules (
    id bigint NOT NULL,
    module_type_id bigint NOT NULL,
    modification character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.modules OWNER TO "zarya-one";

--
-- Name: modules_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.modules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.modules_id_seq OWNER TO "zarya-one";

--
-- Name: modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.modules_id_seq OWNED BY public.modules.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.news (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    subtitle character varying(255),
    annotations jsonb,
    cover_path character varying(255),
    inner_image_path character varying(255),
    content text,
    quote text,
    quote_author text,
    images jsonb,
    youtube_url character varying(255),
    youtube_autoplay boolean DEFAULT false NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.news OWNER TO "zarya-one";

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_id_seq OWNER TO "zarya-one";

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: news_news_tag; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.news_news_tag (
    id bigint NOT NULL,
    news_id bigint NOT NULL,
    news_tag_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.news_news_tag OWNER TO "zarya-one";

--
-- Name: news_news_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.news_news_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_news_tag_id_seq OWNER TO "zarya-one";

--
-- Name: news_news_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.news_news_tag_id_seq OWNED BY public.news_news_tag.id;


--
-- Name: news_tags; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.news_tags (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.news_tags OWNER TO "zarya-one";

--
-- Name: news_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.news_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.news_tags_id_seq OWNER TO "zarya-one";

--
-- Name: news_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.news_tags_id_seq OWNED BY public.news_tags.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.pages (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    description text,
    meta_tags text,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.pages OWNER TO "zarya-one";

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pages_id_seq OWNER TO "zarya-one";

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO "zarya-one";

--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO "zarya-one";

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personal_access_tokens_id_seq OWNER TO "zarya-one";

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: situation_module_tags; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.situation_module_tags (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.situation_module_tags OWNER TO "zarya-one";

--
-- Name: situation_module_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.situation_module_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.situation_module_tags_id_seq OWNER TO "zarya-one";

--
-- Name: situation_module_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.situation_module_tags_id_seq OWNED BY public.situation_module_tags.id;


--
-- Name: situation_placement_tags; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.situation_placement_tags (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.situation_placement_tags OWNER TO "zarya-one";

--
-- Name: situation_placement_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.situation_placement_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.situation_placement_tags_id_seq OWNER TO "zarya-one";

--
-- Name: situation_placement_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.situation_placement_tags_id_seq OWNED BY public.situation_placement_tags.id;


--
-- Name: situation_situation_module_tag; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.situation_situation_module_tag (
    id bigint NOT NULL,
    situation_id bigint NOT NULL,
    situation_module_tag_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.situation_situation_module_tag OWNER TO "zarya-one";

--
-- Name: situation_situation_module_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.situation_situation_module_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.situation_situation_module_tag_id_seq OWNER TO "zarya-one";

--
-- Name: situation_situation_module_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.situation_situation_module_tag_id_seq OWNED BY public.situation_situation_module_tag.id;


--
-- Name: situation_situation_placement_tag; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.situation_situation_placement_tag (
    id bigint NOT NULL,
    situation_id bigint NOT NULL,
    situation_placement_tag_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.situation_situation_placement_tag OWNER TO "zarya-one";

--
-- Name: situation_situation_placement_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.situation_situation_placement_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.situation_situation_placement_tag_id_seq OWNER TO "zarya-one";

--
-- Name: situation_situation_placement_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.situation_situation_placement_tag_id_seq OWNED BY public.situation_situation_placement_tag.id;


--
-- Name: situations; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.situations (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    cover_path character varying(255),
    inner_image_path character varying(255),
    task text,
    work_done text,
    quote text,
    quote_author text,
    rating smallint,
    images jsonb,
    card_options jsonb NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.situations OWNER TO "zarya-one";

--
-- Name: situations_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.situations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.situations_id_seq OWNER TO "zarya-one";

--
-- Name: situations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.situations_id_seq OWNED BY public.situations.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: zarya-one
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO "zarya-one";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: zarya-one
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO "zarya-one";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zarya-one
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: article_article_tag id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.article_article_tag ALTER COLUMN id SET DEFAULT nextval('public.article_article_tag_id_seq'::regclass);


--
-- Name: article_sections id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.article_sections ALTER COLUMN id SET DEFAULT nextval('public.article_sections_id_seq'::regclass);


--
-- Name: article_tags id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.article_tags ALTER COLUMN id SET DEFAULT nextval('public.article_tags_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: document_categories id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.document_categories ALTER COLUMN id SET DEFAULT nextval('public.document_categories_id_seq'::regclass);


--
-- Name: documentation_products id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.documentation_products ALTER COLUMN id SET DEFAULT nextval('public.documentation_products_id_seq'::regclass);


--
-- Name: documentation_tabs id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.documentation_tabs ALTER COLUMN id SET DEFAULT nextval('public.documentation_tabs_id_seq'::regclass);


--
-- Name: documents id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.documents ALTER COLUMN id SET DEFAULT nextval('public.documents_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: gas_agent_situation id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.gas_agent_situation ALTER COLUMN id SET DEFAULT nextval('public.gas_agent_situation_id_seq'::regclass);


--
-- Name: gas_agents id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.gas_agents ALTER COLUMN id SET DEFAULT nextval('public.gas_agents_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: module_situation id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.module_situation ALTER COLUMN id SET DEFAULT nextval('public.module_situation_id_seq'::regclass);


--
-- Name: module_types id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.module_types ALTER COLUMN id SET DEFAULT nextval('public.module_types_id_seq'::regclass);


--
-- Name: modules id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.modules ALTER COLUMN id SET DEFAULT nextval('public.modules_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: news_news_tag id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.news_news_tag ALTER COLUMN id SET DEFAULT nextval('public.news_news_tag_id_seq'::regclass);


--
-- Name: news_tags id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.news_tags ALTER COLUMN id SET DEFAULT nextval('public.news_tags_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: situation_module_tags id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_module_tags ALTER COLUMN id SET DEFAULT nextval('public.situation_module_tags_id_seq'::regclass);


--
-- Name: situation_placement_tags id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_placement_tags ALTER COLUMN id SET DEFAULT nextval('public.situation_placement_tags_id_seq'::regclass);


--
-- Name: situation_situation_module_tag id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_situation_module_tag ALTER COLUMN id SET DEFAULT nextval('public.situation_situation_module_tag_id_seq'::regclass);


--
-- Name: situation_situation_placement_tag id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_situation_placement_tag ALTER COLUMN id SET DEFAULT nextval('public.situation_situation_placement_tag_id_seq'::regclass);


--
-- Name: situations id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situations ALTER COLUMN id SET DEFAULT nextval('public.situations_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: article_article_tag article_article_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.article_article_tag
    ADD CONSTRAINT article_article_tag_pkey PRIMARY KEY (id);


--
-- Name: article_sections article_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.article_sections
    ADD CONSTRAINT article_sections_pkey PRIMARY KEY (id);


--
-- Name: article_tags article_tags_name_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.article_tags
    ADD CONSTRAINT article_tags_name_unique UNIQUE (name);


--
-- Name: article_tags article_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.article_tags
    ADD CONSTRAINT article_tags_pkey PRIMARY KEY (id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: document_categories document_categories_documentation_tab_id_name_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.document_categories
    ADD CONSTRAINT document_categories_documentation_tab_id_name_unique UNIQUE (documentation_tab_id, name);


--
-- Name: document_categories document_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.document_categories
    ADD CONSTRAINT document_categories_pkey PRIMARY KEY (id);


--
-- Name: documentation_products documentation_products_name_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.documentation_products
    ADD CONSTRAINT documentation_products_name_unique UNIQUE (name);


--
-- Name: documentation_products documentation_products_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.documentation_products
    ADD CONSTRAINT documentation_products_pkey PRIMARY KEY (id);


--
-- Name: documentation_tabs documentation_tabs_documentation_product_id_name_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.documentation_tabs
    ADD CONSTRAINT documentation_tabs_documentation_product_id_name_unique UNIQUE (documentation_product_id, name);


--
-- Name: documentation_tabs documentation_tabs_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.documentation_tabs
    ADD CONSTRAINT documentation_tabs_pkey PRIMARY KEY (id);


--
-- Name: documents documents_document_category_id_name_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_document_category_id_name_unique UNIQUE (document_category_id, name);


--
-- Name: documents documents_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: gas_agent_situation gas_agent_situation_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.gas_agent_situation
    ADD CONSTRAINT gas_agent_situation_pkey PRIMARY KEY (id);


--
-- Name: gas_agents gas_agents_name_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.gas_agents
    ADD CONSTRAINT gas_agents_name_unique UNIQUE (name);


--
-- Name: gas_agents gas_agents_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.gas_agents
    ADD CONSTRAINT gas_agents_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: module_situation module_situation_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.module_situation
    ADD CONSTRAINT module_situation_pkey PRIMARY KEY (id);


--
-- Name: module_types module_types_name_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.module_types
    ADD CONSTRAINT module_types_name_unique UNIQUE (name);


--
-- Name: module_types module_types_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.module_types
    ADD CONSTRAINT module_types_pkey PRIMARY KEY (id);


--
-- Name: modules modules_module_type_id_modification_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_module_type_id_modification_unique UNIQUE (module_type_id, modification);


--
-- Name: modules modules_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_pkey PRIMARY KEY (id);


--
-- Name: news_news_tag news_news_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.news_news_tag
    ADD CONSTRAINT news_news_tag_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: news_tags news_tags_name_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.news_tags
    ADD CONSTRAINT news_tags_name_unique UNIQUE (name);


--
-- Name: news_tags news_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.news_tags
    ADD CONSTRAINT news_tags_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages pages_slug_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_slug_unique UNIQUE (slug);


--
-- Name: pages pages_title_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_title_unique UNIQUE (title);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: situation_module_tags situation_module_tags_name_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_module_tags
    ADD CONSTRAINT situation_module_tags_name_unique UNIQUE (name);


--
-- Name: situation_module_tags situation_module_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_module_tags
    ADD CONSTRAINT situation_module_tags_pkey PRIMARY KEY (id);


--
-- Name: situation_placement_tags situation_placement_tags_name_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_placement_tags
    ADD CONSTRAINT situation_placement_tags_name_unique UNIQUE (name);


--
-- Name: situation_placement_tags situation_placement_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_placement_tags
    ADD CONSTRAINT situation_placement_tags_pkey PRIMARY KEY (id);


--
-- Name: situation_situation_module_tag situation_situation_module_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_situation_module_tag
    ADD CONSTRAINT situation_situation_module_tag_pkey PRIMARY KEY (id);


--
-- Name: situation_situation_placement_tag situation_situation_placement_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_situation_placement_tag
    ADD CONSTRAINT situation_situation_placement_tag_pkey PRIMARY KEY (id);


--
-- Name: situations situations_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situations
    ADD CONSTRAINT situations_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: zarya-one
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: zarya-one
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- Name: article_article_tag article_article_tag_article_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.article_article_tag
    ADD CONSTRAINT article_article_tag_article_id_foreign FOREIGN KEY (article_id) REFERENCES public.articles(id);


--
-- Name: article_article_tag article_article_tag_article_tag_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.article_article_tag
    ADD CONSTRAINT article_article_tag_article_tag_id_foreign FOREIGN KEY (article_tag_id) REFERENCES public.article_tags(id);


--
-- Name: article_sections article_sections_article_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.article_sections
    ADD CONSTRAINT article_sections_article_id_foreign FOREIGN KEY (article_id) REFERENCES public.articles(id);


--
-- Name: document_categories document_categories_documentation_tab_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.document_categories
    ADD CONSTRAINT document_categories_documentation_tab_id_foreign FOREIGN KEY (documentation_tab_id) REFERENCES public.documentation_tabs(id);


--
-- Name: documentation_tabs documentation_tabs_documentation_product_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.documentation_tabs
    ADD CONSTRAINT documentation_tabs_documentation_product_id_foreign FOREIGN KEY (documentation_product_id) REFERENCES public.documentation_products(id);


--
-- Name: documents documents_document_category_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_document_category_id_foreign FOREIGN KEY (document_category_id) REFERENCES public.document_categories(id);


--
-- Name: gas_agent_situation gas_agent_situation_gas_agent_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.gas_agent_situation
    ADD CONSTRAINT gas_agent_situation_gas_agent_id_foreign FOREIGN KEY (gas_agent_id) REFERENCES public.gas_agents(id);


--
-- Name: gas_agent_situation gas_agent_situation_situation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.gas_agent_situation
    ADD CONSTRAINT gas_agent_situation_situation_id_foreign FOREIGN KEY (situation_id) REFERENCES public.situations(id);


--
-- Name: module_situation module_situation_module_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.module_situation
    ADD CONSTRAINT module_situation_module_id_foreign FOREIGN KEY (module_id) REFERENCES public.modules(id);


--
-- Name: module_situation module_situation_situation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.module_situation
    ADD CONSTRAINT module_situation_situation_id_foreign FOREIGN KEY (situation_id) REFERENCES public.situations(id);


--
-- Name: modules modules_module_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_module_type_id_foreign FOREIGN KEY (module_type_id) REFERENCES public.module_types(id);


--
-- Name: news_news_tag news_news_tag_news_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.news_news_tag
    ADD CONSTRAINT news_news_tag_news_id_foreign FOREIGN KEY (news_id) REFERENCES public.news(id);


--
-- Name: news_news_tag news_news_tag_news_tag_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.news_news_tag
    ADD CONSTRAINT news_news_tag_news_tag_id_foreign FOREIGN KEY (news_tag_id) REFERENCES public.news_tags(id);


--
-- Name: situation_situation_module_tag situation_situation_module_tag_situation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_situation_module_tag
    ADD CONSTRAINT situation_situation_module_tag_situation_id_foreign FOREIGN KEY (situation_id) REFERENCES public.situations(id);


--
-- Name: situation_situation_module_tag situation_situation_module_tag_situation_module_tag_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_situation_module_tag
    ADD CONSTRAINT situation_situation_module_tag_situation_module_tag_id_foreign FOREIGN KEY (situation_module_tag_id) REFERENCES public.situation_module_tags(id);


--
-- Name: situation_situation_placement_tag situation_situation_placement_tag_situation_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_situation_placement_tag
    ADD CONSTRAINT situation_situation_placement_tag_situation_id_foreign FOREIGN KEY (situation_id) REFERENCES public.situations(id);


--
-- Name: situation_situation_placement_tag situation_situation_placement_tag_situation_placement_tag_id_fo; Type: FK CONSTRAINT; Schema: public; Owner: zarya-one
--

ALTER TABLE ONLY public.situation_situation_placement_tag
    ADD CONSTRAINT situation_situation_placement_tag_situation_placement_tag_id_fo FOREIGN KEY (situation_placement_tag_id) REFERENCES public.situation_placement_tags(id);


--
-- PostgreSQL database dump complete
--

