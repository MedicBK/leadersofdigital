
CREATE TABLE ref.drug_dosage_rel_contra (
    id bigint NOT NULL,
    drug_dosage_id bigint NOT NULL,
    cond character varying NOT NULL,
    contra_var_ids bigint[] NOT NULL,
    message text NOT NULL
);


CREATE SEQUENCE ref.drug_dosage_rel_contra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ref.drug_dosage_rel_contra_id_seq OWNED BY ref.drug_dosage_rel_contra.id;


ALTER TABLE ONLY ref.drug_dosage_rel_contra ALTER COLUMN id SET DEFAULT nextval('ref.drug_dosage_rel_contra_id_seq'::regclass);


COPY ref.drug_dosage_rel_contra (id, drug_dosage_id, cond, contra_var_ids, message) FROM stdin;
1	30	41 = any($1)	{41}	При трудно контролируемом сахарном диабете назначение диуретических препаратов противопоказано.
2	7	41 = any($1)	{41}	При трудно контролируемом сахарном диабете назначение диуретических препаратов противопоказано.
3	8	41 = any($1)	{41}	При трудно контролируемом сахарном диабете назначение диуретических препаратов противопоказано.
4	24	41 = any($1)	{41}	При трудно контролируемом сахарном диабете назначение диуретических препаратов противопоказано.
5	12	41 = any($1)	{41}	При трудно контролируемом сахарном диабете назначение диуретических препаратов противопоказано.
6	49	41 = any($1)	{41}	При трудно контролируемом сахарном диабете назначение диуретических препаратов противопоказано.
7	19	41 = any($1)	{41}	При трудно контролируемом сахарном диабете назначение диуретических препаратов противопоказано.
8	76	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
9	2	60 = any($1)	{60}	
10	30	60 = any($1)	{60}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
11	7	60 = any($1)	{60}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
12	8	60 = any($1)	{60}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
13	24	60 = any($1)	{60}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
14	12	60 = any($1)	{60}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
15	49	60 = any($1)	{60}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
16	19	60 = any($1)	{60}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
\.


SELECT pg_catalog.setval('ref.drug_dosage_rel_contra_id_seq', 16, true);


ALTER TABLE ONLY ref.drug_dosage_rel_contra
    ADD CONSTRAINT drug_dosage_rel_contra_pkey PRIMARY KEY (id);


ALTER TABLE ONLY ref.drug_dosage_rel_contra
    ADD CONSTRAINT drug_dosage_rel_contra_unique UNIQUE (drug_dosage_id, cond);


ALTER TABLE ONLY ref.drug_dosage_rel_contra
    ADD CONSTRAINT drug_dosage_rel_contra_dd_id_key FOREIGN KEY (drug_dosage_id) REFERENCES ref.drug_dosage(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

