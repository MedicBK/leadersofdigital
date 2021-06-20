
CREATE TABLE ref.drug_dosage_abs_contra (
    id bigint NOT NULL,
    drug_dosage_id bigint NOT NULL,
    cond character varying NOT NULL,
    contra_var_ids bigint[] NOT NULL,
    message text NOT NULL
);


CREATE SEQUENCE ref.drug_dosage_abs_contra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ref.drug_dosage_abs_contra_id_seq OWNED BY ref.drug_dosage_abs_contra.id;


ALTER TABLE ONLY ref.drug_dosage_abs_contra ALTER COLUMN id SET DEFAULT nextval('ref.drug_dosage_abs_contra_id_seq'::regclass);


COPY ref.drug_dosage_abs_contra (id, drug_dosage_id, cond, contra_var_ids, message) FROM stdin;
59	11	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric > 5.1	{66}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
180	31	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric > 5.1	{66}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
181	43	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric > 5.1	{66}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
182	44	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric > 5.1	{66}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
183	33	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric > 5.1	{66}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
185	39	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric > 5.1	{66}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
186	42	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric > 5.1	{66}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
187	45	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric > 5.1	{66}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
188	41	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric > 5.1	{66}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
211	29	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric > 5.1	{66}	Уровень калия в сыворотке крови > 5.1 ммоль/л
6	51	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric < 3.5	{243}	
14	43	64 = any($1)	{64}	
15	59	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
16	30	160 = any($1)	{160}	
17	7	160 = any($1)	{160}	
18	24	160 = any($1)	{160}	
19	12	160 = any($1)	{160}	
20	49	160 = any($1)	{160}	
21	19	160 = any($1)	{160}	
209	40	64 = any($1)	{64}	
24	67	$2 ? 'acs' and ($2 ->> 'acs')::numeric < 10	{}	Острый коронарный синдром в анамнезе <10 дней
25	51	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 10	{}	Скорость клубочковой фильтрации <10 мл/мин/1.72 м2
26	60	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 15	{}	Скорость клубочковой фильтрации <15 мл/мин/1.72 м2
27	68	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 15	{}	Скорость клубочковой фильтрации <15 мл/мин/1.72 м2
28	51	490 = any($1)	{490}	
29	1	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
30	5	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
31	6	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
32	21	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
33	32	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
38	34	160 = any($1)	{160}	В случае наличия тяжелго нарушения функции печени назначение сартанов противопоказано.
43	41	64 = any($1)	{64}	
44	60	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
45	35	505 = any($1)	{505}	При выраженном нарушении периферического кровообращения назначение бисопролола, метопролола, небиволола, пропранолола противопоказано.
46	32	505 = any($1)	{505}	При выраженном нарушении периферического кровообращения назначение бисопролола, метопролола, небиволола, пропранолола противопоказано.
47	37	505 = any($1)	{505}	При выраженном нарушении периферического кровообращения назначение бисопролола, метопролола, небиволола, пропранолола противопоказано.
49	9	564 = any($1)	{564}	
50	48	160 = any($1)	{160}	В случае наличия тяжелго нарушения функции печени назначение пропранолола противопоказано.
51	50	160 = any($1)	{160}	В случае наличия тяжелго нарушения функции печени назначение сартанов противопоказано.
52	26	160 = any($1)	{160}	В случае наличия тяжелго нарушения функции печени назначение сартанов противопоказано.
53	25	160 = any($1)	{160}	В случае наличия тяжелго нарушения функции печени назначение сартанов противопоказано.
54	13	160 = any($1)	{160}	В случае наличия тяжелго нарушения функции печени назначение сартанов противопоказано.
55	15	160 = any($1)	{160}	В случае наличия тяжелго нарушения функции печени назначение сартанов противопоказано.
56	20	160 = any($1)	{160}	В случае наличия тяжелго нарушения функции печени назначение сартанов противопоказано.
57	52	160 = any($1)	{160}	В случае наличия тяжелго нарушения функции печени назначение сартанов противопоказано.
58	15	492 = any($1)	{492}	
60	31	64 = any($1)	{64}	
61	44	64 = any($1)	{64}	
62	33	64 = any($1)	{64}	
63	39	64 = any($1)	{64}	
64	42	64 = any($1)	{64}	
65	45	64 = any($1)	{64}	
66	40	160 = any($1)	{160}	В случае наличия тяжелго нарушения функции печени назначение каптоприла, трандолаприла противопоказано.
67	33	160 = any($1)	{160}	В случае наличия тяжелго нарушения функции печени назначение каптоприла, трандолаприла противопоказано.
68	40	492 = any($1)	{492}	
69	16	43 = any($1)	{43}	[*] В соответствии с рекомендациями этот препарат противопоказан...
70	61	490 = any($1)	{490}	
71	1	array[134,136]::bigint[] <@ $1	{134,136}	
72	21	array[134,136]::bigint[] <@ $1	{134,136}	
73	56	array[134,136]::bigint[] <@ $1	{134,136}	
74	78	153 = any($1)	{153}	
75	35	62 = any($1)	{62}	
78	32	62 = any($1)	{62}	
79	37	62 = any($1)	{62}	
80	57	62 = any($1)	{62}	
81	57	138 = any($1)	{138}	
82	58	62 = any($1)	{62}	
83	58	153 = any($1)	{153}	
85	8594	499 = any($1)	{499}	
86	8594	37 = any($1)	{37}	
87	8594	138 = any($1)	{138}	
88	8594	160 = any($1)	{160}	В случае наличия тяжелого нарушения функции печени назначение аллапинина противопоказано.
89	68	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
90	69	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
91	60	490 = any($1)	{490}	
92	68	490 = any($1)	{490}	
93	69	490 = any($1)	{490}	
94	68	390 = any($1)	{390}	
95	69	390 = any($1)	{390}	
96	21	$2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40	{222}	
97	22	$2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40	{222}	
154	3004	160 = any($1)	{160}	
48	48	505 = any($1)	{505}	При выраженном нарушении периферического кровообращения назначение бисопролола, метопролола, небиволола, пропранолола противопоказано.
98	23	$2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40	{222}	
99	38	$2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40	{222}	
100	61	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
101	70	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
102	71	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
103	70	490 = any($1)	{490}	
104	71	490 = any($1)	{490}	
105	61	390 = any($1)	{390}	
106	70	390 = any($1)	{390}	
107	71	390 = any($1)	{390}	
210	29	64 = any($1)	{64}	
108	62	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
109	73	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
110	72	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
111	62	490 = any($1)	{490}	
112	72	490 = any($1)	{490}	
113	73	490 = any($1)	{490}	
114	62	390 = any($1)	{390}	
115	72	390 = any($1)	{390}	
116	73	390 = any($1)	{390}	
117	75	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
118	74	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
119	63	160 = any($1)	{160}	Если у пациента имеется заболевание печени с нарушением свертывания крови, назначение антикоагулянтных препаратов противопоказано.
120	63	490 = any($1)	{490}	
121	74	490 = any($1)	{490}	
122	75	490 = any($1)	{490}	
123	63	390 = any($1)	{390}	
124	74	390 = any($1)	{390}	
125	75	390 = any($1)	{390}	
126	1	array[130,136]::bigint[] <@ $1	{130,136}	
127	1	array[131,136]::bigint[] <@ $1	{131,136}	
128	1	array[132,136]::bigint[] <@ $1	{132,136}	
129	1	array[133,136]::bigint[] <@ $1	{133,136}	
130	21	array[130,136]::bigint[] <@ $1	{130,136}	
131	21	array[131,136]::bigint[] <@ $1	{131,136}	
132	21	array[132,136]::bigint[] <@ $1	{132,136}	
133	21	array[133,136]::bigint[] <@ $1	{133,136}	
134	56	array[130,136]::bigint[] <@ $1	{130,136}	
135	56	array[131,136]::bigint[] <@ $1	{131,136}	
136	56	array[132,136]::bigint[] <@ $1	{132,136}	
137	56	array[133,136]::bigint[] <@ $1	{133,136}	
138	3004	564 = any($1)	{564}	
139	8	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
140	8	490 = any($1)	{490}	
141	1	$2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40	{222}	
143	5	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
144	6	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
145	8	160 = any($1)	{160}	
146	8	398 = any($1)	{398}	
147	57	564 = any($1)	{564}	
148	58	564 = any($1)	{564}	
149	8594	564 = any($1)	{564}	
150	1	564 = any($1)	{564}	
151	21	564 = any($1)	{564}	
152	1	499 = any($1)	{499}	
153	21	499 = any($1)	{499}	
155	3004	499 = any($1)	{499}	
156	10	564 = any($1)	{564}	
157	14	564 = any($1)	{564}	
158	23	564 = any($1)	{564}	
159	38	564 = any($1)	{564}	
160	22	564 = any($1)	{564}	
161	9	499 = any($1)	{499}	
162	10	499 = any($1)	{499}	
163	14	499 = any($1)	{499}	
164	22	499 = any($1)	{499}	
165	23	499 = any($1)	{499}	
166	38	499 = any($1)	{499}	
167	5	62 = any($1)	{62}	
168	6	62 = any($1)	{62}	
169	36	62 = any($1)	{62}	
170	47	62 = any($1)	{62}	
171	48	62 = any($1)	{62}	
212	29	68 = any($1)	{68}	
184	36	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
205	11	64 = any($1)	{64}	
206	11	499 = any($1)	{499}	
207	11	490 = any($1)	{490}	
208	11	68 = any($1)	{68}	
214	40	68 = any($1)	{68}	
215	16	160 = any($1)	{160}	
217	67	160 = any($1)	{160}	
218	67	64 = any($1)	{64}	
219	9	$2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40	{222}	
221	1	$2 ? 'acs' and ($2 ->> 'acs')::numeric < 30	{}	Острый коронарный синдром в анамнезе < 30 дней
222	21	$2 ? 'acs' and ($2 ->> 'acs')::numeric < 30	{}	Острый коронарный синдром в анамнезе < 30 дней
223	10	$2 ? 'acs' and ($2 ->> 'acs')::numeric < 30	{}	Острый коронарный синдром в анамнезе < 30 дней
224	9	$2 ? 'acs' and ($2 ->> 'acs')::numeric < 30	{}	Острый коронарный синдром в анамнезе < 30 дней
225	23	$2 ? 'acs' and ($2 ->> 'acs')::numeric < 30	{}	Острый коронарный синдром в анамнезе < 30 дней
226	38	$2 ? 'acs' and ($2 ->> 'acs')::numeric < 30	{}	Острый коронарный синдром в анамнезе < 30 дней
227	22	$2 ? 'acs' and ($2 ->> 'acs')::numeric < 30	{}	Острый коронарный синдром в анамнезе < 30 дней
228	3004	$2 ? 'acs' and ($2 ->> 'acs')::numeric < 30	{}	Острый коронарный синдром в анамнезе < 30 дней
229	67	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
230	67	$2 ? 'creat' and ($2 ->> 'creat')::numeric > 160	{}	Клиренс креатинина >160 мкмоль/л
231	67	490 = any($1)	{490}	
232	58	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 10	{}	Скорость клубочковой фильтрации <10 мл/мин/1.72 м2
233	69	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 15	{}	Скорость клубочковой фильтрации <15 мл/мин/1.72 м2
234	63	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 15	{}	Скорость клубочковой фильтрации <15 мл/мин/1.72 м2
235	74	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 15	{}	Скорость клубочковой фильтрации <15 мл/мин/1.72 м2
236	75	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 15	{}	Скорость клубочковой фильтрации <15 мл/мин/1.72 м2
237	15	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 20	{}	Скорость клубочковой фильтрации <20 мл/мин/1.72 м2
239	11	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 20	{}	Скорость клубочковой фильтрации <20 мл/мин/1.72 м2
240	33	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 20	{}	Скорость клубочковой фильтрации <20 мл/мин/1.72 м2
241	7	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
242	30	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
243	24	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
244	12	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
245	49	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
246	19	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
247	16	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
248	3004	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
249	61	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
250	70	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
251	71	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
253	15	490 = any($1)	{490}	
254	40	490 = any($1)	{490}	
255	33	490 = any($1)	{490}	
256	7	490 = any($1)	{490}	
257	30	490 = any($1)	{490}	
258	24	490 = any($1)	{490}	
259	12	490 = any($1)	{490}	
260	49	490 = any($1)	{490}	
261	19	490 = any($1)	{490}	
262	16	490 = any($1)	{490}	
263	3004	490 = any($1)	{490}	
264	35	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
265	36	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
267	47	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
268	48	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
269	54	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
270	56	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
271	57	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
272	58	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
273	67	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
274	76	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
275	77	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
276	78	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
278	10	$2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40	{222}	
280	11	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
281	32	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
283	37	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
284	47	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
285	48	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
277	57	$2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 35	{}	Фракция выброса ЛЖ <35%
287	58	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
288	60	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
289	67	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
290	77	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
291	8594	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 40)	{222,211}	
266	37	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 50)	{}	Брадикардия (ЧСС <50 уд в мин)
300	2	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 60)	{208}	
301	55	154 != all($1) and ($2 ? 'heartRate' and ($2 ->> 'heartRate')::numeric < 70)	{208}	Брадикардия (ЧСС <70 уд в мин)
282	35	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 35)	{211}	Фракция выброса ЛЖ <35%
286	54	211 = any($1) and ($2 ? 'heartFailure' and ($2 ->> 'heartFailure')::numeric < 35)	{211}	Фракция выброса ЛЖ <35%
302	54	62 = any($1)	{62}	
292	78	154 != all($1) and 226 = any($1)	{226}	
293	54	154 != all($1) and 226 = any($1)	{226}	
294	56	154 != all($1) and 226 = any($1)	{226}	
295	77	154 != all($1) and 226 = any($1)	{226}	
296	76	154 != all($1) and 226 = any($1)	{226}	
297	57	154 != all($1) and 226 = any($1)	{226}	
298	58	154 != all($1) and 226 = any($1)	{226}	
299	8594	154 != all($1) and 226 = any($1)	{226}	
1	47	154 != all($1) and 226 = any($1)	{226}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
2	6	154 != all($1) and 226 = any($1)	{226}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
3	36	154 != all($1) and 226 = any($1)	{226}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
4	48	154 != all($1) and 226 = any($1)	{226}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
5	5	154 != all($1) and 226 = any($1)	{226}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
23	35	154 != all($1) and 226 = any($1)	{226}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
34	32	154 != all($1) and 226 = any($1)	{226}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
35	37	154 != all($1) and 226 = any($1)	{226}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
76	1	154 != all($1) and 226 = any($1)	{226}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
77	21	154 != all($1) and 226 = any($1)	{226}	[*] В соответствии с рекомендациями эта группа препаратов противопоказана...
303	2	499 = any($1)	{499}	
304	28	499 = any($1)	{499}	
305	1996	499 = any($1)	{499}	
306	55	564 = any($1)	{564}	
307	57	153 = any($1)	{153}	
308	54	505 = any($1)	{505}	
309	983	505 = any($1)	{505}	
310	54	160 = any($1)	{160}	
311	37	160 = any($1)	{160}	
312	2	160 = any($1)	{160}	
313	28	160 = any($1)	{160}	
314	55	160 = any($1)	{160}	
315	2	154 != all($1) and 226 = any($1)	{226}	
316	55	154 != all($1) and 226 = any($1)	{226}	
213	40	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric > 5.5	{66}	
216	16	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric > 5.5	{66}	
22	30	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric < 3.5	{243}	При наличии гипонатриемии, гиперкальциемии назначение диуретических препаратов противопоказано.
36	7	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric < 3.5	{243}	При наличии гипонатриемии, гиперкальциемии назначение диуретических препаратов противопоказано.
37	8	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric < 3.5	{243}	При наличии гипонатриемии, гиперкальциемии назначение диуретических препаратов противопоказано.
39	24	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric < 3.5	{243}	При наличии гипонатриемии, гиперкальциемии назначение диуретических препаратов противопоказано.
40	12	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric < 3.5	{243}	При наличии гипонатриемии, гиперкальциемии назначение диуретических препаратов противопоказано.
41	49	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric < 3.5	{243}	При наличии гипонатриемии, гиперкальциемии назначение диуретических препаратов противопоказано.
42	19	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric < 3.5	{243}	При наличии гипонатриемии, гиперкальциемии назначение диуретических препаратов противопоказано.
317	2	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric < 3.5	{243}	При наличии гипонатриемии, гиперкальциемии назначение диуретических препаратов противопоказано.
318	28	$2 ? 'potassium' and ($2 ->> 'potassium')::numeric < 3.5	{243}	При наличии гипонатриемии, гиперкальциемии назначение диуретических препаратов противопоказано.
320	28	60 = any($1)	{60}	
238	40	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 15	{}	Скорость клубочковой фильтрации <15 мл/мин/1.72 м2
321	17	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
322	18	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
323	2	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
324	28	$2 ? 'gfr' and ($2 ->> 'gfr')::numeric < 30	{43}	
325	55	$2 ? 'acs' and ($2 ->> 'acs')::numeric < 10	{}	Острый коронарный синдром в анамнезе <10 дней
326	11	$2 ? 'acs' and ($2 ->> 'acs')::numeric < 10	{}	Острый коронарный синдром в анамнезе <10 дней
220	14	$2 ? 'acs' and ($2 ->> 'acs')::numeric < 28	{}	Острый коронарный синдром в анамнезе < 28 дней
84	58	505 = any($1)	{505}	При выраженном нарушении периферического кровообращения назначение бисопролола, метопролола, сотагексала противопоказано.
\.


--
-- Name: drug_dosage_abs_contra_id_seq; Type: SEQUENCE SET; Schema: ref; Owner: -
--

SELECT pg_catalog.setval('ref.drug_dosage_abs_contra_id_seq', 326, true);


--
-- Name: drug_dosage_abs_contra drug_dosage_abs_contra_pkey; Type: CONSTRAINT; Schema: ref; Owner: -
--

ALTER TABLE ONLY ref.drug_dosage_abs_contra
    ADD CONSTRAINT drug_dosage_abs_contra_pkey PRIMARY KEY (id);


--
-- Name: drug_dosage_abs_contra drug_dosage_abs_contra_unique; Type: CONSTRAINT; Schema: ref; Owner: -
--

ALTER TABLE ONLY ref.drug_dosage_abs_contra
    ADD CONSTRAINT drug_dosage_abs_contra_unique UNIQUE (drug_dosage_id, cond);


--
-- Name: drug_dosage_abs_contra drug_dosage_abs_contra_dd_id_key; Type: FK CONSTRAINT; Schema: ref; Owner: -
--

ALTER TABLE ONLY ref.drug_dosage_abs_contra
    ADD CONSTRAINT drug_dosage_abs_contra_dd_id_key FOREIGN KEY (drug_dosage_id) REFERENCES ref.drug_dosage(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

