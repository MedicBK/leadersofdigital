
CREATE TABLE ref.drug_dosage_abs_contra_lang (
    id bigint NOT NULL,
    dd_ac_id bigint NOT NULL,
    message public.hstore
);


CREATE SEQUENCE ref.drug_dosage_abs_contra_lang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ref.drug_dosage_abs_contra_lang_id_seq OWNED BY ref.drug_dosage_abs_contra_lang.id;


ALTER TABLE ONLY ref.drug_dosage_abs_contra_lang ALTER COLUMN id SET DEFAULT nextval('ref.drug_dosage_abs_contra_lang_id_seq'::regclass);


COPY ref.drug_dosage_abs_contra_lang (id, dd_ac_id, message) FROM stdin;
\.


SELECT pg_catalog.setval('ref.drug_dosage_abs_contra_lang_id_seq', 1, false);


ALTER TABLE ONLY ref.drug_dosage_abs_contra_lang
    ADD CONSTRAINT drug_dosage_abs_contra_lang_pkey PRIMARY KEY (id);


ALTER TABLE ONLY ref.drug_dosage_abs_contra_lang
    ADD CONSTRAINT drug_dosage_abs_contra_lang_unique UNIQUE (dd_ac_id);


ALTER TABLE ONLY ref.drug_dosage_abs_contra_lang
    ADD CONSTRAINT drug_dosage_abs_contra_lang_ddac_id_key FOREIGN KEY (dd_ac_id) REFERENCES ref.drug_dosage_abs_contra(id) ON UPDATE CASCADE ON DELETE CASCADE;

