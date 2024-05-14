--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (52, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (53, 'Web Programming');
INSERT INTO public.courses VALUES (54, 'Database Systems');
INSERT INTO public.courses VALUES (55, 'Computer Networks');
INSERT INTO public.courses VALUES (56, 'SQL');
INSERT INTO public.courses VALUES (57, 'Machine Learning');
INSERT INTO public.courses VALUES (58, 'Computer Systems');
INSERT INTO public.courses VALUES (59, 'Web Applications');
INSERT INTO public.courses VALUES (60, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (61, 'Python');
INSERT INTO public.courses VALUES (62, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (63, 'Calculus');
INSERT INTO public.courses VALUES (64, 'Game Architecture');
INSERT INTO public.courses VALUES (65, 'Algorithms');
INSERT INTO public.courses VALUES (66, 'UNIX');
INSERT INTO public.courses VALUES (67, 'Server Administration');
INSERT INTO public.courses VALUES (68, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (55, 'Database Administration');
INSERT INTO public.majors VALUES (56, 'Web Development');
INSERT INTO public.majors VALUES (57, 'Data Science');
INSERT INTO public.majors VALUES (58, 'Network Engineering');
INSERT INTO public.majors VALUES (59, 'Computer Programming');
INSERT INTO public.majors VALUES (60, 'Game Design');
INSERT INTO public.majors VALUES (61, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (55, 52);
INSERT INTO public.majors_courses VALUES (56, 53);
INSERT INTO public.majors_courses VALUES (55, 54);
INSERT INTO public.majors_courses VALUES (57, 52);
INSERT INTO public.majors_courses VALUES (58, 55);
INSERT INTO public.majors_courses VALUES (55, 56);
INSERT INTO public.majors_courses VALUES (57, 57);
INSERT INTO public.majors_courses VALUES (58, 58);
INSERT INTO public.majors_courses VALUES (59, 55);
INSERT INTO public.majors_courses VALUES (55, 59);
INSERT INTO public.majors_courses VALUES (60, 60);
INSERT INTO public.majors_courses VALUES (57, 61);
INSERT INTO public.majors_courses VALUES (59, 62);
INSERT INTO public.majors_courses VALUES (61, 58);
INSERT INTO public.majors_courses VALUES (60, 63);
INSERT INTO public.majors_courses VALUES (56, 52);
INSERT INTO public.majors_courses VALUES (57, 63);
INSERT INTO public.majors_courses VALUES (56, 62);
INSERT INTO public.majors_courses VALUES (60, 64);
INSERT INTO public.majors_courses VALUES (61, 55);
INSERT INTO public.majors_courses VALUES (60, 65);
INSERT INTO public.majors_courses VALUES (61, 66);
INSERT INTO public.majors_courses VALUES (61, 67);
INSERT INTO public.majors_courses VALUES (59, 58);
INSERT INTO public.majors_courses VALUES (59, 61);
INSERT INTO public.majors_courses VALUES (58, 68);
INSERT INTO public.majors_courses VALUES (56, 59);
INSERT INTO public.majors_courses VALUES (58, 65);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (49, 'Rhea', 'Kellems', 55, 2.5);
INSERT INTO public.students VALUES (50, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (51, 'Kimberly', 'Whitley', 56, 3.8);
INSERT INTO public.students VALUES (52, 'Jimmy', 'Felipe', 55, 3.7);
INSERT INTO public.students VALUES (53, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (54, 'Casares', 'Hijo', 60, 4.0);
INSERT INTO public.students VALUES (55, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (56, 'Sterling', 'Boss', 60, 3.9);
INSERT INTO public.students VALUES (57, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (58, 'Kaija', 'Uronen', 60, 3.7);
INSERT INTO public.students VALUES (59, 'Faye', 'Conn', 60, 2.1);
INSERT INTO public.students VALUES (60, 'Efren', 'Reilly', 56, 3.9);
INSERT INTO public.students VALUES (61, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (62, 'Maxine', 'Hagenes', 55, 2.9);
INSERT INTO public.students VALUES (63, 'Larry', 'Saunders', 57, 2.2);
INSERT INTO public.students VALUES (64, 'Karl', 'Kuhar', 56, NULL);
INSERT INTO public.students VALUES (65, 'Lieke', 'Hazenveld', 60, 3.5);
INSERT INTO public.students VALUES (66, 'Obie', 'Hilpert', 56, NULL);
INSERT INTO public.students VALUES (67, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (68, 'Nathan', 'Turner', 55, 3.3);
INSERT INTO public.students VALUES (69, 'Gerald', 'Osiki', 57, 2.2);
INSERT INTO public.students VALUES (70, 'Vanya', 'Hassanah', 60, 4.0);
INSERT INTO public.students VALUES (71, 'Roxelana', 'Florescu', 55, 3.2);
INSERT INTO public.students VALUES (72, 'Helene', 'Parker', 57, 3.4);
INSERT INTO public.students VALUES (73, 'Mariana', 'Russel', 56, 1.8);
INSERT INTO public.students VALUES (74, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (75, 'Mehdi', 'Vandenberghe', 55, 1.9);
INSERT INTO public.students VALUES (76, 'Dejon', 'Howell', 56, 4.0);
INSERT INTO public.students VALUES (77, 'Aliya', 'Gulgowski', 61, 2.6);
INSERT INTO public.students VALUES (78, 'Ana', 'Tupajic', 57, 3.1);
INSERT INTO public.students VALUES (79, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 68, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 61, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 79, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

