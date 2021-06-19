begin;

create table if not exists ref.section
(
    id bigserial not null ,
    name character varying collate pg_catalog."default" not null ,
    descr text collate pg_catalog."default",
    alter_names character varying collate pg_catalog."default",
    constraint section_pkey primary key (id),
    constraint section_name_unique unique (name)
);

create table if not exists ref.exam
(
    id bigserial not null ,
    name character varying collate pg_catalog."default" not null ,
    descr text collate pg_catalog."default",
    alter_names character varying collate pg_catalog."default",
    constraint exam_pkey primary key (id),
    constraint exam_name_unique unique (name)
);

create table if not exists ref.advice
(
    id bigserial not null ,
    name character varying collate pg_catalog."default" not null ,
    descr text collate pg_catalog."default",
    alter_names character varying collate pg_catalog."default",
    constraint advice_pkey primary key (id),
    constraint advice_name_unique unique (name)
);

create table if not exists ref.treatment
(
    id bigserial not null ,
    name character varying collate pg_catalog."default" not null ,
    descr text collate pg_catalog."default",
    alter_names character varying collate pg_catalog."default",
    constraint treatment_pkey primary key (id),
    constraint treatment_name_unique unique (name)
);

commit;