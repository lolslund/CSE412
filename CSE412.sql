--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9
-- Dumped by pg_dump version 12.6

-- Started on 2022-04-26 22:23:07 MST

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
-- TOC entry 205 (class 1259 OID 16424)
-- Name: Accessory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Accessory" (
    "Accessory_ID" integer NOT NULL,
    "Type" text,
    "Make" text,
    "Model" text,
    "Stock" integer
);


ALTER TABLE public."Accessory" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16402)
-- Name: Tire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tire" (
    "Tire_ID" integer NOT NULL,
    "Make" text,
    "Model" text,
    "Speed_Rating" text,
    "Load_Index" integer,
    "Rim_Diameter" integer,
    "Aspect_Ratio" integer,
    "Width" integer,
    "Inflation_Pressure" integer,
    "Stock" integer
);


ALTER TABLE public."Tire" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16394)
-- Name: Vehicle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Vehicle" (
    "Vehicle_ID" integer NOT NULL,
    "Make" text,
    "Model" text,
    "Year" text,
    "Trim" text,
    "Type" text
);


ALTER TABLE public."Vehicle" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16410)
-- Name: Wheel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Wheel" (
    "Wheel_ID" integer NOT NULL,
    "Make" text,
    "Model" text,
    "Offset" integer,
    "Bolt_Pattern" text,
    "Width" double precision,
    "Diameter" integer,
    "Stock" integer
);


ALTER TABLE public."Wheel" OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16456)
-- Name: accessory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accessory (
    accessory_id integer NOT NULL,
    type text,
    make text,
    model text,
    stock integer
);


ALTER TABLE public.accessory OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16499)
-- Name: combo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.combo (
    vehicle_id integer NOT NULL,
    tire_id integer NOT NULL,
    wheel_id integer NOT NULL
);


ALTER TABLE public.combo OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16484)
-- Name: fits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fits (
    wheel_id integer NOT NULL,
    accessory_id integer NOT NULL
);


ALTER TABLE public.fits OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16440)
-- Name: tire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tire (
    tire_id integer NOT NULL,
    make text,
    model text,
    speed_rating text,
    load_index integer,
    rim_diameter integer,
    aspect_ratio integer,
    width integer,
    inflation_pressure integer,
    stock integer
);


ALTER TABLE public.tire OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16432)
-- Name: vehicle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vehicle (
    vehicle_id integer NOT NULL,
    make text,
    model text,
    year integer,
    "trim" text,
    type text
);


ALTER TABLE public.vehicle OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16448)
-- Name: wheel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wheel (
    wheel_id integer NOT NULL,
    make text,
    model text,
    offset_ integer,
    bolt_pattern text,
    width double precision,
    diameter integer,
    stock integer
);


ALTER TABLE public.wheel OWNER TO postgres;

--
-- TOC entry 3200 (class 0 OID 16424)
-- Dependencies: 205
-- Data for Name: Accessory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Accessory" ("Accessory_ID", "Type", "Make", "Model", "Stock") FROM stdin;
\.


--
-- TOC entry 3198 (class 0 OID 16402)
-- Dependencies: 203
-- Data for Name: Tire; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tire" ("Tire_ID", "Make", "Model", "Speed_Rating", "Load_Index", "Rim_Diameter", "Aspect_Ratio", "Width", "Inflation_Pressure", "Stock") FROM stdin;
\.


--
-- TOC entry 3197 (class 0 OID 16394)
-- Dependencies: 202
-- Data for Name: Vehicle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Vehicle" ("Vehicle_ID", "Make", "Model", "Year", "Trim", "Type") FROM stdin;
\.


--
-- TOC entry 3199 (class 0 OID 16410)
-- Dependencies: 204
-- Data for Name: Wheel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Wheel" ("Wheel_ID", "Make", "Model", "Offset", "Bolt_Pattern", "Width", "Diameter", "Stock") FROM stdin;
\.


--
-- TOC entry 3204 (class 0 OID 16456)
-- Dependencies: 209
-- Data for Name: accessory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accessory (accessory_id, type, make, model, stock) FROM stdin;
8	TPMS	Dill	TPMS Retrofit Kit	8
\.


--
-- TOC entry 3206 (class 0 OID 16499)
-- Dependencies: 211
-- Data for Name: combo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.combo (vehicle_id, tire_id, wheel_id) FROM stdin;
1	4	7
1	5	7
1	6	7
\.


--
-- TOC entry 3205 (class 0 OID 16484)
-- Dependencies: 210
-- Data for Name: fits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fits (wheel_id, accessory_id) FROM stdin;
7	8
\.


--
-- TOC entry 3202 (class 0 OID 16440)
-- Dependencies: 207
-- Data for Name: tire; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tire (tire_id, make, model, speed_rating, load_index, rim_diameter, aspect_ratio, width, inflation_pressure, stock) FROM stdin;
4	Sentury	UHP	W	93	17	50	205	49	32
5	Barum	Bravuris 5HM	V	93	17	50	205	51	20
6	Continental	Control Contact Tour A/S Plus	V	93	17	50	205	51	12
\.


--
-- TOC entry 3201 (class 0 OID 16432)
-- Dependencies: 206
-- Data for Name: vehicle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vehicle (vehicle_id, make, model, year, "trim", type) FROM stdin;
2	Subaru	Outback	2020	Onyx Edition XT	5-door station wagon
1	BMW	330ci	2001	Manual Coupe	Compact executive car
\.


--
-- TOC entry 3203 (class 0 OID 16448)
-- Dependencies: 208
-- Data for Name: wheel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wheel (wheel_id, make, model, offset_, bolt_pattern, width, diameter, stock) FROM stdin;
7	MB Wheels	Alpina	35	5-120.0	7.5	16	16
\.


--
-- TOC entry 3053 (class 2606 OID 16431)
-- Name: Accessory Accessory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Accessory"
    ADD CONSTRAINT "Accessory_pkey" PRIMARY KEY ("Accessory_ID");


--
-- TOC entry 3049 (class 2606 OID 16409)
-- Name: Tire Tire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tire"
    ADD CONSTRAINT "Tire_pkey" PRIMARY KEY ("Tire_ID");


--
-- TOC entry 3047 (class 2606 OID 16401)
-- Name: Vehicle Vehicle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Vehicle"
    ADD CONSTRAINT "Vehicle_pkey" PRIMARY KEY ("Vehicle_ID");


--
-- TOC entry 3051 (class 2606 OID 16417)
-- Name: Wheel Wheel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Wheel"
    ADD CONSTRAINT "Wheel_pkey" PRIMARY KEY ("Wheel_ID");


--
-- TOC entry 3061 (class 2606 OID 16463)
-- Name: accessory accessory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accessory
    ADD CONSTRAINT accessory_pkey PRIMARY KEY (accessory_id);


--
-- TOC entry 3065 (class 2606 OID 16503)
-- Name: combo combo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.combo
    ADD CONSTRAINT combo_pkey PRIMARY KEY (vehicle_id, tire_id, wheel_id);


--
-- TOC entry 3063 (class 2606 OID 16488)
-- Name: fits fits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fits
    ADD CONSTRAINT fits_pkey PRIMARY KEY (wheel_id, accessory_id);


--
-- TOC entry 3057 (class 2606 OID 16447)
-- Name: tire tire_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tire
    ADD CONSTRAINT tire_pkey PRIMARY KEY (tire_id);


--
-- TOC entry 3055 (class 2606 OID 16439)
-- Name: vehicle vehicle_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (vehicle_id);


--
-- TOC entry 3059 (class 2606 OID 16455)
-- Name: wheel wheel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wheel
    ADD CONSTRAINT wheel_pkey PRIMARY KEY (wheel_id);


--
-- TOC entry 3069 (class 2606 OID 16509)
-- Name: combo combo_tire_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.combo
    ADD CONSTRAINT combo_tire_id_fkey FOREIGN KEY (tire_id) REFERENCES public.tire(tire_id);


--
-- TOC entry 3068 (class 2606 OID 16504)
-- Name: combo combo_vehicle_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.combo
    ADD CONSTRAINT combo_vehicle_id_fkey FOREIGN KEY (vehicle_id) REFERENCES public.vehicle(vehicle_id);


--
-- TOC entry 3070 (class 2606 OID 16514)
-- Name: combo combo_wheel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.combo
    ADD CONSTRAINT combo_wheel_id_fkey FOREIGN KEY (wheel_id) REFERENCES public.wheel(wheel_id);


--
-- TOC entry 3067 (class 2606 OID 16494)
-- Name: fits fits_accessory_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fits
    ADD CONSTRAINT fits_accessory_id_fkey FOREIGN KEY (accessory_id) REFERENCES public.accessory(accessory_id);


--
-- TOC entry 3066 (class 2606 OID 16489)
-- Name: fits fits_wheel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fits
    ADD CONSTRAINT fits_wheel_id_fkey FOREIGN KEY (wheel_id) REFERENCES public.wheel(wheel_id);


-- Completed on 2022-04-26 22:23:07 MST

--
-- PostgreSQL database dump complete
--

