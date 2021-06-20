
CREATE TABLE ref.drug (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    descr text,
    alter_names character varying(200)[]
);


CREATE SEQUENCE ref.drug_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE ref.drug_id_seq OWNED BY ref.drug.id;


ALTER TABLE ONLY ref.drug ALTER COLUMN id SET DEFAULT nextval('ref.drug_id_seq'::regclass);


COPY ref.drug (id, name, descr, alter_names) FROM stdin;
54	Carvedilol	\N	\N
55	Ivabradine	\N	\N
56	Digoxin	\N	\N
57	Propafenone	\N	\N
58	Sotalol	\N	\N
59	Warfarin	\N	\N
60	Apixaban	\N	\N
61	Dabigatran	\N	\N
62	Edoxaban	\N	\N
63	Rivaroxaban	\N	\N
68	Flecainide	\N	\N
69	Dronedarone	\N	\N
70	Amiodarone	\N	\N
71	Abagovomab	\N	{}
72	Abacavir	\N	{}
73	Abaloparatide	\N	{}
74	Abamectin	\N	{}
75	Abametapir	\N	{}
76	Abanoquil	\N	{}
77	Abaperidone	\N	{}
78	Abarelix	\N	{}
79	Abatacept	\N	{}
80	Abafungin	\N	{}
81	Abediterol	\N	{}
82	Abecarnil	\N	{}
83	Abecomotide	\N	{}
84	Abexinostat	\N	{}
85	Abemaciclib	\N	{}
86	Abetimus	\N	{}
87	Abiraterone	\N	{}
88	Abitesartan	\N	{}
89	Abituzumab	\N	{}
90	Abicipar pegol	\N	{}
91	Ablukast	\N	{}
92	Abrilumab	\N	{}
93	Abrineurin	\N	{}
94	Abunidazole	\N	{}
95	Abciximab	\N	{}
96	Avagacestat	\N	{}
97	Avacopan	\N	{}
98	Avanafil	\N	{}
7574	Fudosteine	\N	{}
211	Asoprisnil	\N	{}
212	Asoprisnil ecamate	\N	{}
213	Azosemide	\N	{}
214	Azotomycin	\N	{}
215	Aztreonam	\N	{}
216	Azumolene	\N	{}
217	Acadesine	\N	{}
218	Acalabrutinib	\N	{}
219	Acalisib	\N	{}
220	Acamprosate	\N	{}
221	Acaprazine	\N	{}
222	Acarbose	\N	{}
223	Aclantate	\N	{}
224	Aclarubicin	\N	{}
225	Aclatonium napadisilate	\N	{}
226	Aclerastide	\N	{}
227	Aclidinium bromide	\N	{}
228	Aklomide	\N	{}
8581	Efungumab	\N	{}
8582	Ecenofloxacin	\N	{}
8583	Ecipramidil	\N	{}
8584	Atorvastatin	\N	{}
8585	Acetylsalicylic acid	\N	{}
8586	Lappaconitine hydrobromide	\N	{}
8587	Vildagliptin	\N	{}
8588	Ethylmethylhydroxypyridine succinate	\N	{}
8589	Diethylaminopropionyletoxycarbonylaminophenothiazine	\N	{}
48	Propranolol	Immediate release\n40 mg PO q12hr initially, increasing every 3-7 days; maintenance: 80-240 mg PO q8-12hr; not to exceed 640 mg/day\nInderal LA\n80 mg/day PO initially; maintenance: 120-160 mg/day; not to exceed 640 mg/day\nInnoPran XL\n80 mg/day PO initially; may be increased every 2-3 weeks until response achieved; maintenance: not to exceed 120 mg/day PO\nContraindications:\nAsthma, COPD\nSevere sinus bradycardia or 2°/3° heart block (except in patients with functioning artificial pacemaker)\nCardiogenic shock\nUncompensated congestive heart failuren Hypersensitivity\nOvert heart failure\nSick sinus syndrome without permanent pacemaker	\N
19	Cyclopenthiazide	0.25-0.5 mg daily alone or in conjunction with other antihypertensives.\n\nSevere hepatic or renal impairment; anuria; Addison's disease; hypercalcaemia; porphyria	\N
24	Metolazone	2.5-5 mg PO once daily; may be increased to 20 mg once daily PRN\nDosing Modifications\nRenal impairment: Not necessary to supplement dose in hemodialysis or peritoneal dialysis\nContraindications:\nDocumented hypersensitivity to metolazone or sulfonamides Anuria Hepatic coma or precoma	\N
12	Chlorothiazide	0.5 -1 g (10-20 mL)/day PO/IV as single or divided dose; increase or decrease dosage based on blood pressure response\nContraindications:\nHypersensitivity to chlorothiazide or sulfonamides Anuria	\N
26	Irbesartan	150 mg/day PO initially; may be increased to 300 mg/day PO\n\nHypovolemia: 75 mg/day PO initially\nDosage Modifications\nMild-to-severe renal impairment: Dosage adjustment not necessary unless patient is hypovolemic\nContraindications:\nHypersensitivity\nDo not coadminister with aliskiren in patients with diabetes	\N
229	Acodazole	\N	{}
28	Furosemide	20-80 mg PO divided q12hr\nContraindications:\nDocumented hypersensitivity to furosemide or sulfonamides Anuria	\N
27	Labetalol	100 mg PO q12hr initially; increased by 100 mg q12hr every 2-3 days\n\nUsual dosage range: 200-400 mg PO q12hr; not to exceed 2400 mg/day\n\nDosing Modifications\nRenal impairment: Not studied; no supplement needed after dialysis\nHepatic impairment: Not studied; dosage reduction may be necessary\nContraindications\nAsthma or obstructive airway disease, severe bradycardia, 2°/3° heart block (without pacemaker), cardiogenic shock, bronchial asthma, uncompensated cardiac failure, hypersensitivity, sinus bradycardia, sick sinus syndrome without permanent pacemaker; conditions associated with prolonged and severe hypotension	\N
111	Avosentan	\N	{}
112	Avoparcin	\N	{}
113	Avoralstat	\N	{}
114	Avorelin	\N	{}
115	Avotermin	\N	{}
116	Avridine	\N	{}
117	Agalsidase alfa	\N	{}
118	Agalsidase beta	\N	{}
119	Aganepag	\N	{}
120	Aganirsen	\N	{}
121	Aganodine	\N	{}
122	Agatolimod	\N	{}
123	Agerafenib	\N	{}
124	Aglatimagene besadenovec	\N	{}
125	Aglepristone	\N	{}
126	Agomelatine	\N	{}
127	Adalimumab	\N	{}
29	Enalapril	Initial: 2.5-5 mg PO qDay\nMaintenance: 10-40 mg/day PO qDay or divided q12hr\nDosage Modifications\nHepatic impairment: No dosage adjustment required\n\nRenal impairment\nCrCl <30 mL/min: (PO) Initiate 2.5 mg; titrate to response; not to exceed 40 mg\nDialysis: 2.5 mg PO on day of dialysis; adjust dose on nondialysis days according to BP\nCrCl <30 mL/min: (IV) Initiate 0.625 mg q6hr; titrate based on response\nCrCl ≥30 mL/min: (PO) Initiate 5 mg/day; titrate to maximum of 40 mg\nCrCl ≥30 mL/min: (IV) 1.25 mg q6hr; titrate based on response\nContraindications:\nHypersensitivity to enalapril/other ACE inhibitors\nHistory of ACE inhibitor-induced angioedema, hereditary or idiopathic angioedema\nCoadministration of neprilysin inhibitors (eg, sacubitril) with ACE inhibitors may increase angioedema risk; do not administer ACE inhibitors within 36 hr of switching to or from sacubitril/valsartan\nDo not coadminister with aliskiren in patients with diabetes mellitus or with renal impairment (ie, GFR <60 mL/min/1.73 m²)\nBilateral renal artery stenosis	\N
38	Nifedipine	30-60 mg (extended release) PO once daily; may be increased every 7-14 days PRN; not to exceed 90 mg/day (Adalat CC) or 120 mg/day (Procardia XL)\nDosing Modifications\nPeritoneal dialysis (PD) or hemodialysis (HD): Supplemental dose not necessary\nCirrhosis: Consider dose adjustment\nContraindications:\nHypersensitivity to nifedipine or other calcium-channel blockers\nCardiogenic shock\nConcomitant administration with strong CYP3A4 inducers (eg, rifampin, rifabutin, phenobarbital, phenytoin, carbamazepine, St John's wort) significantly reduces nifedipine efficacy\nImmediate release preparation (sublingually or orally) for urgent or emergent hypertension	\N
175	Azaprocin	\N	{}
176	Azaribine	\N	{}
177	Azaserine	\N	{}
178	Azasetron	\N	{}
179	Azaspirium chloride	\N	{}
22	Felodipine	Initial 2.5-5 mg orally once/day\nMaintenance: 2.5-10 mg orally once/day; some recommend up to 20 mg/day\nContraindications:\nHypersensitivity	\N
2	Torasemide	2.5-5 mg/day PO initially; increased to 10 mg/day PO in 4-6 weeks PRN\nContraindications:\nKnown hypersensitivity to torsemide or to povidone Anuria Hepatic coma	\N
180	Azastene	\N	{}
181	Azatadine	\N	{}
182	Azatepa	\N	{}
183	Azathioprine	\N	{}
184	Azaftozine	\N	{}
40	Captopril	Initial: 25 mg PO q8-12hr, increase gradually based on response (may start lower in some patients)\n\nMaintenance: 25-150 mg PO q8-12hr\n\n450 mg/day maximumn Contraindications:\nHypersensitivity to ACE inhibitors Anuria\nHistory of ACEI-induced angioedema\nHereditary or idiopathic angioedema\nCoadministration of neprilysin inhibitors (eg, sacubitril) with ACE inhibitors may increase angioedema risk; do not administer ACE inhibitors within 36 hr of switching to or from sacubitril/valsartann Bilateral renal artery stenosis\nDo not coadminister with aliskiren in patients with diabetes mellitus or with renal impairment (ie, GFR <60 mL/min/1.73 m²)	\N
41	Lisinopril	Not taking diuretic: 10 mg PO qDay initially; usual range is 20-40 mg/day as single daily dose\nTaking diuretic: Discontinue diuretic for 2-3 days before initiating lisinopril to reduce chance of hypotension; may resume diuretic if blood pressure is not controlled; if diuretic cannot be discontinued, initial dose of lisinopril 5 mg should be used under supervision for at least 2 hours and until blood pressure has stabilized for at least 1 hour\nDosage Modifications\nRenal impairment\nHypertension and CrCl >30 mL/min: 10 mg PO qDay initially; not to exceed 40 mg/day\nHypertension and CrCl 10-30 mL/min: 5 mg PO qDay initially; not to exceed 40 mg/day\nHypertension and CrCl <10 mL/min or hemodialysis: 2.5 mg PO qDay initially; not to exceed 40 mg/da\nContraindications:\nHypersensitivity to lisinopril/other ACE inhibitors\nHistory of ACE inhibitor-induced angioedema, hereditary or idiopathic angioedema\nCoadministration of neprilysin inhibitors (eg, sacubitril)\nCoadministration with aliskiren in patients with diabetes mellitus or with renal impairment (ie, GFR <60 mL/min/1.73m²	\N
8	Indapamide	1.25 mg PO qAM initially; \nmay increase at 4-week intervals up to 5 mg qAM\nContraindications\nHypersensitivity to indapamide or sulfonamides Anuria	\N
17	Amiloride	5-10 mg/day PO qDay OR divided q12hr\n\nContraindications:\nHypersensitivity to amiloride\nHyperkalemia (K+ >5.5 mEq/L [5.5 mmol/L])\nConcomitant use with K+-sparing diuretic, or K supplementation\nImpaired renal function (Scr >1.5 mg/dL [132.6 umol/L], or BUN >30 mg/dL [10.7 mmol/L]) diabetes	\N
185	Azaquinzole	\N	{}
186	Azacyclonol	\N	{}
187	Azacitidine	\N	{}
188	Azelaic acid	\N	{}
189	Azelastine	\N	{}
190	Azeliragon	\N	{}
191	Azelnidipine	\N	{}
192	Asenapine	\N	{}
10	Isradipine	Capsule: 2.5 PO q12hr; may increase dose q2-4week at 2.5-5 mg increments to maximum 20 mg/day (most patients show no improvement with doses >10 mg/day); maximum in older adults is 10 mg/day\n\nControlled release tablet: 5 mg PO qDay; may increase dose by 5 mg q2-4week; not to exceed 20 mg/day (freqency of adverse effects increases with doses >10 mg/day)\nContraindications\nHypersensitivity to isradipine or other calcium channel blockers; hypotension (<90 mm Hg systolic)	\N
193	Azepexole	\N	{}
194	Azepindole	\N	{}
195	Aseripide	\N	{}
196	Azetirelin	\N	{}
197	Azidamfenicol	\N	{}
198	Azidocillin	\N	{}
199	Azilsartan medoxomil	\N	{}
200	Asimadoline	\N	{}
201	Azimexon	\N	{}
202	Azimilide	\N	{}
203	Azintamide	\N	{}
204	Azipramine	\N	{}
205	Azithromycin	\N	{}
206	Azlocillin	\N	{}
207	Asobamast	\N	{}
208	Asocainol	\N	{}
209	Azoximer bromide	\N	{}
210	Azolimine	\N	{}
99	Avasimibe	\N	{}
100	Avatrombopag	\N	{}
101	Avacincaptad pegol	\N	{}
102	Avelumab	\N	{}
103	Avibactam	\N	{}
104	Avizafone	\N	{}
105	Avicatonin	\N	{}
106	Avilamycin	\N	{}
107	Aviptadil	\N	{}
108	Aviscumine	\N	{}
109	Avitriptan	\N	{}
110	Avobenzone	\N	{}
128	Adamexine	\N	{}
129	Adapalene	\N	{}
130	Adaprolol	\N	{}
131	Adargileukin alfa	\N	{}
132	Adarotene	\N	{}
133	Adatanserin	\N	{}
134	Adafenoxate	\N	{}
135	Adegramotide	\N	{}
136	Adekalant	\N	{}
137	Adecatumumab	\N	{}
138	Adelmidrol	\N	{}
139	Ademetionine	\N	{}
140	Adenosine phosphate	\N	{}
141	Aderbasib	\N	{}
142	Adefovir	\N	{}
143	Adibendan	\N	{}
144	Adimolol	\N	{}
145	Adinazolam	\N	{}
146	Adipiodone	\N	{}
147	Adipiplon	\N	{}
148	Aditeren	\N	{}
149	Aditoprim	\N	{}
150	Adiphenine	\N	{}
151	Adicillin	\N	{}
152	Adozelesin	\N	{}
153	Adosopine	\N	{}
154	Adomeglivant	\N	{}
155	Adomiparin sodium	\N	{}
156	Adoprazine	\N	{}
157	Adrafinil	\N	{}
158	Adrenalone	\N	{}
159	Adrogolide	\N	{}
160	Aducanumab	\N	{}
161	Azabon	\N	{}
162	Azabuperone	\N	{}
163	Azaclorzine	\N	{}
164	Azaconazole	\N	{}
165	Azacosterol	\N	{}
166	Azalanstat	\N	{}
167	Azaloxan	\N	{}
168	Azalomycin	\N	{}
169	Azamethonium bromide	\N	{}
170	Azamulin	\N	{}
171	Azanator	\N	{}
172	Azanidazole	\N	{}
173	Azaperone	\N	{}
174	Azapropazone	\N	{}
230	Acoxatrine	\N	{}
231	Acoxil	\N	{}
232	Acolbifene	\N	{}
233	Aconiazide	\N	{}
234	Acorafloxacin	\N	{}
235	Acotiamide	\N	{}
236	Acreozast	\N	{}
237	Acrivastine	\N	{}
238	Acrihellin	\N	{}
239	Acridorex	\N	{}
240	Acrisorcin	\N	{}
241	Acriflavinium chloride	\N	{}
242	Acronine	\N	{}
243	Acrocinonide	\N	{}
244	Axalimogene filolisbac	\N	{}
245	Axamozide	\N	{}
246	Axelopran	\N	{}
247	Axetil	\N	{}
248	Axitinib	\N	{}
249	Axitirome	\N	{}
250	Axomadol	\N	{}
251	Actagardin	\N	{}
252	Actaplanin	\N	{}
253	Actarit	\N	{}
254	Actisomide	\N	{}
255	Actinoquinol	\N	{}
256	Actodigin	\N	{}
257	Amidantel	\N	{}
258	Amidapsone	\N	{}
259	Amidefrine mesilate	\N	{}
260	Amisometradine	\N	{}
261	Amicarbalide	\N	{}
262	Amikacin	\N	{}
263	Amikhelline	\N	{}
264	Amixetrine	\N	{}
265	Amylmetacresol	\N	{}
266	Amiloxate	\N	{}
267	Amilomer	\N	{}
268	Amilomotide	\N	{}
269	Amindocate	\N	{}
270	Amineptine	\N	{}
271	Aminitrozole	\N	{}
272	Aminoacridine	\N	{}
273	Aminoglutethimide	\N	{}
274	Aminocaproic acid	\N	{}
275	Aminoxytriphene	\N	{}
276	Aminometradine	\N	{}
277	Aminopromazine	\N	{}
278	Aminopterin sodium	\N	{}
279	Aminorex	\N	{}
280	Aminothiazole	\N	{}
281	Aminophenazone	\N	{}
282	Aminophenazone cyclamate	\N	{}
283	Aminophylline	\N	{}
284	Aminoquinol	\N	{}
285	Aminoquinuride	\N	{}
286	Aminoethyl nitrate	\N	{}
287	Amiperone	\N	{}
288	Amipizone	\N	{}
289	Amiprilose	\N	{}
290	Amiselimod	\N	{}
291	Amisulpride	\N	{}
292	Amiterol	\N	{}
293	Amitivir	\N	{}
294	Amitifadine	\N	{}
295	Amitraz	\N	{}
296	Amitriptyline	\N	{}
297	Amitriptylinoxide	\N	{}
298	Amifampridine	\N	{}
299	Amiphenazole	\N	{}
300	Amiflamine	\N	{}
301	Amifloverine	\N	{}
302	Amifloxacin	\N	{}
303	Amifostine	\N	{}
304	Amiquinsin	\N	{}
305	Amicibone	\N	{}
306	Amicycline	\N	{}
307	Amcasertib	\N	{}
308	Amlexanox	\N	{}
309	Amlintide	\N	{}
310	Amobarbital	\N	{}
311	Amogastrin	\N	{}
312	Amodiaquine	\N	{}
313	Amocarzine	\N	{}
314	Amoxapine	\N	{}
315	Amoxecaine	\N	{}
316	Amoxydramine camsilate	\N	{}
317	Amoxicillin	\N	{}
318	Amolanone	\N	{}
319	Amolimogene bepiplasmid	\N	{}
320	Amonafide	\N	{}
321	Amopyroquine	\N	{}
322	Amoproxan	\N	{}
323	Amorolfine	\N	{}
324	Amoscanate	\N	{}
325	Amosulalol	\N	{}
326	Amotosalen	\N	{}
327	Amperozide	\N	{}
328	Ampyzine	\N	{}
329	Ampyrimine	\N	{}
330	Ampiroxicam	\N	{}
331	Ampicillin	\N	{}
332	Amprenavir	\N	{}
333	Amprolium	\N	{}
334	Amrinone	\N	{}
335	Amrubicin	\N	{}
336	Amsacrine	\N	{}
337	Amsilarotene	\N	{}
338	Amtolmetin guacil	\N	{}
339	Amuvatinib	\N	{}
340	Amfecloral	\N	{}
341	Amfenac	\N	{}
342	Amphenidone	\N	{}
343	Amfepentorex	\N	{}
344	Amfepramone	\N	{}
345	Amfetamine	\N	{}
346	Amfetaminil	\N	{}
347	Amflutizole	\N	{}
348	Amfomycin	\N	{}
349	Amfonelic acid	\N	{}
350	Amphotalide	\N	{}
351	Amphotericin B	\N	{}
352	Amquinate	\N	{}
353	Amcinafal	\N	{}
354	Amcinafide	\N	{}
355	Amcinonide	\N	{}
356	Anagestone	\N	{}
357	Anagliptin	\N	{}
358	Anagrelide	\N	{}
359	Anazolene sodium	\N	{}
360	Anazocine	\N	{}
361	Anakinra	\N	{}
362	Anaxirone	\N	{}
363	Anamorelin	\N	{}
364	Anaritide	\N	{}
365	Anastrozole	\N	{}
366	Anatibant	\N	{}
367	Anatumomab mafenatox	\N	{}
368	Anacetrapib	\N	{}
369	Angiotensin II	\N	{}
370	Angiotensinamide	\N	{}
371	Andecaliximab	\N	{}
372	Andexanet alfa	\N	{}
373	Andolast	\N	{}
374	Androstanolone	\N	{}
375	Anecortave	\N	{}
376	Anetumab ravtansine	\N	{}
377	Ansoxetine	\N	{}
378	Anivamersen	\N	{}
379	Anidoxime	\N	{}
380	Anidulafungin	\N	{}
381	Anisacril	\N	{}
382	Anisatil	\N	{}
383	Anisindione	\N	{}
384	Anisopirol	\N	{}
385	Anilamate	\N	{}
386	Anileridine	\N	{}
387	Anilopam	\N	{}
388	Anipamil	\N	{}
389	Aniracetam	\N	{}
390	Anirolac	\N	{}
391	Anisperimus	\N	{}
392	Anistreplase	\N	{}
393	Anitrazafen	\N	{}
394	Anifrolumab	\N	{}
395	Ancarolol	\N	{}
396	Ancriviroc	\N	{}
397	Ancrod	\N	{}
398	Anpirtoline	\N	{}
399	Anrukinzumab	\N	{}
400	Antazoline	\N	{}
401	Antazonite	\N	{}
402	Antafenite	\N	{}
403	Antelmycin	\N	{}
404	Antienite	\N	{}
405	Anthiolimine	\N	{}
406	Antithrombin III	\N	{}
407	Antithrombin alfa	\N	{}
408	Antithrombin gamma	\N	{}
409	Antramycin	\N	{}
410	Antrafenine	\N	{}
411	Ancestim	\N	{}
412	Ancitabine	\N	{}
413	Apabetalone	\N	{}
414	Apadenoson	\N	{}
415	Apadoline	\N	{}
416	Apaziquone	\N	{}
417	Apaxifylline	\N	{}
418	Apalutamide	\N	{}
419	Apalcillin	\N	{}
420	Apararenone	\N	{}
421	Apatorsen	\N	{}
422	Apafant	\N	{}
423	Apaflurane	\N	{}
424	Apilimod	\N	{}
425	Apimostinel	\N	{}
426	Apitolisib	\N	{}
427	Apicycline	\N	{}
428	Aplaviroc	\N	{}
429	Aplindore	\N	{}
430	Apovincamine	\N	{}
431	Apolizumab	\N	{}
432	Apraclonidine	\N	{}
433	Apramycin	\N	{}
434	Apratastat	\N	{}
435	Apremilast	\N	{}
436	Aprepitant	\N	{}
437	Aprikalim	\N	{}
438	Apricoxib	\N	{}
439	Acitemate	\N	{}
440	Acitretin	\N	{}
441	Acifran	\N	{}
442	Bavisant	\N	{}
443	Bavituximab	\N	{}
444	Bazedoxifene	\N	{}
445	Basiliximab	\N	{}
446	Bazinaprine	\N	{}
447	Basifungin	\N	{}
448	Bazlitoran	\N	{}
449	Bacampicillin	\N	{}
450	Bakeprofen	\N	{}
451	Baclofen	\N	{}
452	Bacmecillinam	\N	{}
453	Baxitozine	\N	{}
454	Balaglitazone	\N	{}
455	Balazipone	\N	{}
456	Balamapimod	\N	{}
457	Balapiravir	\N	{}
458	Balicatib	\N	{}
459	Balixafortide	\N	{}
460	Balofloxacin	\N	{}
461	Balsalazide	\N	{}
462	Balugrastim	\N	{}
463	Bamaluzole	\N	{}
464	Bamaquimast	\N	{}
465	Bambermycin	\N	{}
466	Bambuterol	\N	{}
467	Bamethan	\N	{}
468	Baminercept	\N	{}
469	Bamipine	\N	{}
470	Bamirastine	\N	{}
471	Bamifylline	\N	{}
472	Bamnidazole	\N	{}
473	Bamosiran	\N	{}
474	Banoxantrone	\N	{}
475	Bapineuzumab	\N	{}
476	Barasertib	\N	{}
477	Barbexaclone	\N	{}
478	Barbital	\N	{}
479	Barbital sodium	\N	{}
480	Bardoxolone	\N	{}
481	Barixibat	\N	{}
482	Baricitinib	\N	{}
483	Barmastine	\N	{}
484	Barnidipine	\N	{}
485	Barucainide	\N	{}
486	Barusiban	\N	{}
487	Basimglurant	\N	{}
488	Basmisanil	\N	{}
489	Batabulin	\N	{}
490	Batanopride	\N	{}
491	Batebulast	\N	{}
492	Batelapine	\N	{}
493	Batefenterol	\N	{}
494	Batilol	\N	{}
495	Batimastat	\N	{}
496	Batoprazine	\N	{}
497	Batroxobin	\N	{}
498	Bafetinib	\N	{}
499	Baquiloprim	\N	{}
500	Bacitracin	\N	{}
501	Bevantolol	\N	{}
502	Bevasiranib	\N	{}
503	Bevacizumab	\N	{}
504	Bevacizumab beta	\N	{}
505	Bevenopran	\N	{}
506	Bevirimat	\N	{}
507	Bevonium metilsulfate	\N	{}
508	Begacestat	\N	{}
509	Begelomab	\N	{}
510	Bedaquiline	\N	{}
511	Bederocin	\N	{}
512	Bedoradrine	\N	{}
513	Bezafibrate	\N	{}
514	Besigomsin	\N	{}
515	Besilate	\N	{}
516	Besipirdine	\N	{}
517	Bezitramide	\N	{}
518	Besifloxacin	\N	{}
519	Bezlotoxumab	\N	{}
520	Bezomil	\N	{}
521	Besunide	\N	{}
522	Becampanel	\N	{}
523	Bekanamycin	\N	{}
524	Becantone	\N	{}
525	Becaplermin	\N	{}
526	Becatecarin	\N	{}
527	Beclabuvir	\N	{}
528	Beclamide	\N	{}
529	Beclanorsen	\N	{}
530	Becliconazole	\N	{}
531	Beclobrate	\N	{}
532	Beclometasone	\N	{}
533	Beclotiamine	\N	{}
534	Becocalcidiol	\N	{}
535	Bexagliflozin	\N	{}
536	Bexarotene	\N	{}
537	Bexlosteride	\N	{}
538	Bectumomab	\N	{}
539	Belaperidone	\N	{}
540	Belarizine	\N	{}
541	Belatacept	\N	{}
542	Belizatinib	\N	{}
543	Belimumab	\N	{}
544	Belinostat	\N	{}
545	Belnacasan	\N	{}
546	Beloxamide	\N	{}
547	Beloxepin	\N	{}
548	Beloranib	\N	{}
549	Belotecan	\N	{}
550	Belfosdil	\N	{}
551	Bemarinone	\N	{}
552	Bemegride	\N	{}
553	Bemesetron	\N	{}
554	Bemetizide	\N	{}
555	Beminafil	\N	{}
556	Bemiparin sodium	\N	{}
557	Bemitradine	\N	{}
558	Bemoradan	\N	{}
559	Bemotrizinol	\N	{}
560	Bempedoic acid	\N	{}
561	Benazeprilat	\N	{}
562	Benaxibine	\N	{}
563	Benactyzine	\N	{}
564	Benaprizine	\N	{}
565	Benafentrine	\N	{}
566	Rose bengal (131I) sodium	\N	{}
567	Benhepazone	\N	{}
568	Bendazac	\N	{}
569	Bendazol	\N	{}
570	Bendacalol	\N	{}
571	Bendamustine	\N	{}
572	Benderizine	\N	{}
573	Benexate	\N	{}
574	Benethamine penicillin	\N	{}
575	Benzalkonium chloride	\N	{}
576	Benzaprinoxide	\N	{}
577	Benzarone	\N	{}
578	Benzathine benzylpenicillin	\N	{}
579	Benzatropine	\N	{}
580	Benzbromarone	\N	{}
581	Benzethidine	\N	{}
582	Benzetimide	\N	{}
583	Benzethonium chloride	\N	{}
584	Benzydamine	\N	{}
585	Benzhydrocodone	\N	{}
586	Benzyl alcohol	\N	{}
587	Benzilonium bromide	\N	{}
588	Benzylpenicillin	\N	{}
589	Benzylsulfamide	\N	{}
590	Benzindopyrine	\N	{}
591	Benziodarone	\N	{}
592	Benzquercin	\N	{}
593	Benzmalecene	\N	{}
594	Benznidazole	\N	{}
595	Benzobarbital	\N	{}
596	Benzodepa	\N	{}
597	Benzododecinium chloride	\N	{}
598	Benzocaine	\N	{}
599	Benzoclidine	\N	{}
600	Benzoxiquine	\N	{}
601	Benzoxonium chloride	\N	{}
602	Benzoctamine	\N	{}
603	Benzonatate	\N	{}
604	Benzopyrronium bromide	\N	{}
605	Benzotript	\N	{}
606	Benzpiperylone	\N	{}
607	Benzpyrinium bromide	\N	{}
608	Benzthiazide	\N	{}
609	Benzfetamine	\N	{}
610	Benzquinamide	\N	{}
611	Benzestrol	\N	{}
612	Benidipine	\N	{}
613	Benclonidine	\N	{}
614	Benmoxin	\N	{}
615	Benoxaprofen	\N	{}
616	Benoxafos	\N	{}
617	Benolizime	\N	{}
618	Benorilate	\N	{}
619	Benorterone	\N	{}
620	Benpenolisin	\N	{}
621	Benperidol	\N	{}
622	Benproperine	\N	{}
623	Brimonidine	\N	{}
624	Brinase	\N	{}
625	Brinazarone	\N	{}
626	Brindoxime	\N	{}
627	Brinzolamide	\N	{}
628	Brincidofovir	\N	{}
629	Briobacept	\N	{}
630	Brifentanil	\N	{}
631	Briciclib	\N	{}
632	Brobactam	\N	{}
633	Brovanexine	\N	{}
634	Brovincamine	\N	{}
635	Brodalumab	\N	{}
636	Brodimoprim	\N	{}
637	Brosotamide	\N	{}
638	Broclepride	\N	{}
639	Brocresine	\N	{}
640	Brocrinat	\N	{}
641	Broxaldine	\N	{}
642	Broxaterol	\N	{}
643	Broxitalamic acid	\N	{}
644	Broxyquinoline	\N	{}
645	Broxuridine	\N	{}
646	Brolaconazole	\N	{}
647	Brolamfetamine	\N	{}
648	Brolucizumab	\N	{}
649	Bromadoline	\N	{}
650	Bromazepam	\N	{}
651	Bromazine	\N	{}
652	Bromacrylide	\N	{}
653	Bromamide	\N	{}
654	Bromhexine	\N	{}
655	Bromebric acid	\N	{}
656	Bromelains	\N	{}
657	Bromerguride	\N	{}
658	Brometenamine	\N	{}
659	Bromisoval	\N	{}
660	Bromindione	\N	{}
661	Bromocriptine	\N	{}
662	Bromoxanide	\N	{}
663	Bromopride	\N	{}
664	Bromofenofos	\N	{}
665	Bromofos	\N	{}
666	Bromociclen	\N	{}
667	Bromperidol	\N	{}
668	Bromfenac	\N	{}
669	Brompheniramine	\N	{}
670	Bromchlorenone	\N	{}
671	Bronopol	\N	{}
672	Brontictuzumab	\N	{}
673	Broparestrol	\N	{}
674	Broperamole	\N	{}
675	Bropirimine	\N	{}
676	Brostallicin	\N	{}
677	Brosuximide	\N	{}
678	Brotianide	\N	{}
679	Brotizolam	\N	{}
680	Brofaromine	\N	{}
681	Brofezil	\N	{}
682	Brofoxine	\N	{}
683	Broquinaldol	\N	{}
684	Budesonide	\N	{}
685	Budiodarone	\N	{}
686	Budipine	\N	{}
687	Budotitane	\N	{}
688	Budralazine	\N	{}
689	Buzepide metiodide	\N	{}
690	Bucainide	\N	{}
691	Bucladesine	\N	{}
692	Buclizine	\N	{}
693	Bucloxic acid	\N	{}
694	Buclosamide	\N	{}
695	Bucolome	\N	{}
696	Bucricaine	\N	{}
697	Bucrilate	\N	{}
698	Bucromarone	\N	{}
699	Bucumolol	\N	{}
700	Bulaquine	\N	{}
701	Bumadizone	\N	{}
702	Bumecaine	\N	{}
703	Bumepidil	\N	{}
704	Bumetrizole	\N	{}
705	Bunazosin	\N	{}
706	Bunamidine	\N	{}
707	Bunamiodyl	\N	{}
708	Bunaprolast	\N	{}
709	Bunapsilate	\N	{}
710	Bunaftine	\N	{}
711	Bunitrolol	\N	{}
712	Bunolol	\N	{}
713	Buparvaquone	\N	{}
714	Buparlisib	\N	{}
715	Bupivacaine	\N	{}
716	Bupicomide	\N	{}
717	Bupranolol	\N	{}
718	Buprenorphine	\N	{}
719	Bupropion	\N	{}
720	Buramate	\N	{}
721	Burapitant	\N	{}
722	Burixafor	\N	{}
723	Burlulipase	\N	{}
724	Burodiline	\N	{}
725	Burosumab	\N	{}
726	Buserelin	\N	{}
727	Buspirone	\N	{}
728	Busulfan	\N	{}
729	Butaverine	\N	{}
730	Butadiazamide	\N	{}
731	Butacaine	\N	{}
732	Butaclamol	\N	{}
733	Butaxamine	\N	{}
734	Butalamine	\N	{}
735	Butalbital	\N	{}
736	Buthalital sodium	\N	{}
737	Butamisole	\N	{}
738	Butamirate	\N	{}
739	Butamoxane	\N	{}
740	Butanixin	\N	{}
741	Butanilicaine	\N	{}
742	Butanserin	\N	{}
743	Butantrone	\N	{}
744	Butaperazine	\N	{}
745	Butaprost	\N	{}
746	Butafosfan	\N	{}
747	Butedronic acid	\N	{}
748	Butenafine	\N	{}
749	Buteprate	\N	{}
750	Buterizine	\N	{}
751	Butetamate	\N	{}
752	Butibufen	\N	{}
753	Butidrine	\N	{}
754	Butizide	\N	{}
755	Butikacin	\N	{}
756	Butixirate	\N	{}
757	Butixocort	\N	{}
758	Butilfenin	\N	{}
759	Butylphthalide	\N	{}
760	Butinazocine	\N	{}
761	Butynamine	\N	{}
762	Butinoline	\N	{}
763	Butirosin	\N	{}
764	Butobendine	\N	{}
765	Butoconazole	\N	{}
766	Butocrolol	\N	{}
767	Butoxylate	\N	{}
768	Butoctamide	\N	{}
769	Butonate	\N	{}
770	Butopamine	\N	{}
771	Butopiprine	\N	{}
772	Butopyrammonium iodide	\N	{}
773	Butoprozine	\N	{}
774	Butorphanol	\N	{}
775	Butofilolol	\N	{}
776	Butriptyline	\N	{}
777	Butropium bromide	\N	{}
778	Bufezolac	\N	{}
779	Bufexamac	\N	{}
780	Bufenadrine	\N	{}
781	Buphenine	\N	{}
782	Bufeniode	\N	{}
783	Bufetolol	\N	{}
784	Buflomedil	\N	{}
785	Bufogenin	\N	{}
786	Buformin	\N	{}
787	Bufrolin	\N	{}
788	Bufuralol	\N	{}
789	Buquineran	\N	{}
790	Buquinolate	\N	{}
791	Buquiterine	\N	{}
792	Bucelipase alfa	\N	{}
793	Bucetin	\N	{}
794	Buciclate	\N	{}
795	Buciclovir	\N	{}
796	Bucillamine	\N	{}
797	Bucindolol	\N	{}
798	Vabicaserin	\N	{}
799	Vaborbactam	\N	{}
800	Vadadustat	\N	{}
801	Vadastuximab	\N	{}
802	Vadastuximab talirine	\N	{}
803	Vadimezan	\N	{}
804	Vadocaine	\N	{}
805	Vasopressin injection	\N	{}
806	Valactate	\N	{}
807	Valategrast	\N	{}
808	Vorolanib	\N	{}
809	Vorsetuzumab	\N	{}
810	Vorsetuzumab mafodotin	\N	{}
811	Vortioxetine	\N	{}
812	Voruciclib	\N	{}
813	Vosoritide	\N	{}
814	Votucalis	\N	{}
815	Votumumab	\N	{}
816	Vofopitant	\N	{}
817	Vocimagene amiretrorepvec	\N	{}
818	Vunakizumab	\N	{}
819	Gabapentin	\N	{}
820	Gabapentin enacarbil	\N	{}
821	Gabexate	\N	{}
822	Gaboxadol	\N	{}
823	Gavestinel	\N	{}
824	Gavilimomab	\N	{}
825	Gadobenic acid	\N	{}
826	Gadobutrol	\N	{}
827	Gadoversetamide	\N	{}
828	Gadodenterate	\N	{}
829	Gadodiamide	\N	{}
830	Gadocoletic acid	\N	{}
831	Gadoxetic acid	\N	{}
832	Gadomelitol	\N	{}
833	Gadopenamide	\N	{}
834	Gadopentetic acid	\N	{}
835	Gadoteridol	\N	{}
836	Gadoteric acid	\N	{}
837	Gadofosveset	\N	{}
838	Gaxilose	\N	{}
839	Halazepam	\N	{}
840	Halazone	\N	{}
841	Galamustine	\N	{}
842	Galantamine	\N	{}
843	Galarubicin	\N	{}
844	Galdansetron	\N	{}
845	Haletazole	\N	{}
846	Galeterone	\N	{}
847	Galidesivir	\N	{}
848	Galiximab	\N	{}
849	Galcanezumab	\N	{}
850	Gallamine triethiodide	\N	{}
851	Gallium (67Ga) citrate	\N	{}
852	Gallopamil	\N	{}
853	Halocarban	\N	{}
854	Halocortolone	\N	{}
855	Haloxazolam	\N	{}
856	Haloxon	\N	{}
857	Halometasone	\N	{}
858	Halonamine	\N	{}
859	Halopemide	\N	{}
860	Halopenium chloride	\N	{}
861	Haloperidol	\N	{}
862	Halopredone	\N	{}
863	Haloprogesterone	\N	{}
864	Haloprogin	\N	{}
865	Galosemide	\N	{}
866	Halothane	\N	{}
867	Halofantrine	\N	{}
868	Halofenate	\N	{}
869	Halofuginone	\N	{}
870	Galocitabine	\N	{}
871	Galsulfase	\N	{}
872	Galtifenin	\N	{}
873	Galunisertib	\N	{}
874	Halcinonide	\N	{}
875	Gamithromycin	\N	{}
876	Hamycin	\N	{}
877	Gamolenic acid	\N	{}
878	Gamfexine	\N	{}
879	Ganaxolone	\N	{}
880	Ganglefene	\N	{}
881	Gandotinib	\N	{}
882	Ganetespib	\N	{}
883	Ganirelix	\N	{}
884	Ganitumab	\N	{}
885	Ganstigmine	\N	{}
886	Gantacurium chloride	\N	{}
887	Gantenerumab	\N	{}
888	Gantofiban	\N	{}
889	Ganciclovir	\N	{}
890	Ganefromycin	\N	{}
891	Gapicomine	\N	{}
892	Gapromidine	\N	{}
893	Garenoxacin	\N	{}
894	Garnocestim	\N	{}
895	Gataparsen	\N	{}
896	Gatifloxacin	\N	{}
897	Hachimycin	\N	{}
898	Gacyclidine	\N	{}
899	Guaiactamine	\N	{}
900	Guaiapate	\N	{}
901	Guaimesal	\N	{}
902	Guaisteine	\N	{}
903	Guaifenesin	\N	{}
904	Guaifylline	\N	{}
905	Guaietolin	\N	{}
906	Gevokizumab	\N	{}
907	Gevotroline	\N	{}
908	Gedatolisib	\N	{}
909	Hedaquinium chloride	\N	{}
910	Gedocarnil	\N	{}
911	Geclosporin	\N	{}
912	Hexadiline	\N	{}
913	Hexadimethrine bromide	\N	{}
914	Hexasonium iodide	\N	{}
915	Hexamethonium bromide	\N	{}
916	Hexamidine	\N	{}
917	Hexapradol	\N	{}
918	Hexapropymate	\N	{}
919	Hexaprofen	\N	{}
920	Hexafluronium bromide	\N	{}
921	Hexachlorophene	\N	{}
922	Hexacyprone	\N	{}
923	Hexedine	\N	{}
924	Hexylcaine	\N	{}
925	Hexcarbacholine bromide	\N	{}
926	Hexobarbital	\N	{}
927	Hexobendine	\N	{}
928	Hexopyrronium bromide	\N	{}
929	Hexoprenaline	\N	{}
930	Hexocyclium metilsulfate	\N	{}
931	Hexestrol	\N	{}
932	Hexetidine	\N	{}
933	Heliomycin	\N	{}
934	Gemazocine	\N	{}
935	Gemeprost	\N	{}
936	Gemigliptin	\N	{}
937	Gemilukast	\N	{}
938	Gemifloxacin	\N	{}
939	Gemcabene	\N	{}
940	Gemcadiol	\N	{}
941	Hemoglobin betafumaril (bovine)	\N	{}
942	Hemoglobin glutamer	\N	{}
943	Hemoglobin crosfumaril	\N	{}
944	Hemoglobin crosfumaril (bovine)	\N	{}
945	Hemoglobin raffimer	\N	{}
946	Gemopatrilat	\N	{}
947	Gemtuzumab	\N	{}
948	Gemtuzumab ozogamicin	\N	{}
949	Gemfibrozil	\N	{}
950	Gemcitabine	\N	{}
951	Gemcitabine elaidate	\N	{}
952	Gentamicin	\N	{}
953	Gentisic acid	\N	{}
954	Heparin sodium	\N	{}
955	Gepefrine	\N	{}
956	Hepzidine	\N	{}
957	Gepirone	\N	{}
958	Gepotidacin	\N	{}
959	Hepronicate	\N	{}
960	Heptabarb	\N	{}
961	Heptaverine	\N	{}
962	Heptaminol	\N	{}
963	Heptolamide	\N	{}
964	Geroquinol	\N	{}
965	Gestadienol	\N	{}
966	Gestaclone	\N	{}
967	Gestodene	\N	{}
968	Gestonorone caproate	\N	{}
969	Gestrinone	\N	{}
970	Hetaflur	\N	{}
971	Hetacillin	\N	{}
972	Heteronium bromide	\N	{}
973	Gefarnate	\N	{}
974	Gefitinib	\N	{}
975	Hydralazine	\N	{}
976	Hyalosidase	\N	{}
977	Hyaluronidase	\N	{}
978	Hibenzate	\N	{}
979	Givinostat	\N	{}
980	Givosiran	\N	{}
981	Hydracarbazine	\N	{}
982	Hydrargaphen	\N	{}
983	Hydrobentizide	\N	{}
984	Hydrocodone	\N	{}
985	Hydrocortamate	\N	{}
986	Hydrocortisone	\N	{}
987	Hydrocortisone aceponate	\N	{}
988	Hydroxyamfetamine	\N	{}
989	Hydroxydione sodium succinate	\N	{}
990	Hydroxyzine	\N	{}
991	Hydroxycarbamide	\N	{}
992	Hydroxindasate	\N	{}
993	Hydroxindasol	\N	{}
994	Hydroxypethidine	\N	{}
995	Hydroxypyridine tartrate	\N	{}
996	Hydroxyprogesterone	\N	{}
997	Hydroxyprogesterone caproate	\N	{}
998	Hydroxyprocaine	\N	{}
999	Hydroxystenozole	\N	{}
1000	Hydroxystilbamidine	\N	{}
1001	Hydroxytetracaine	\N	{}
1002	Hydroxytoluic acid	\N	{}
1003	Hydroxychloroquine	\N	{}
1004	Hydroxocobalamin	\N	{}
1005	Hydromadinone	\N	{}
1006	Hydromorphinol	\N	{}
1007	Hydromorphone	\N	{}
1008	Hydrotalcite	\N	{}
1009	Hydroflumethiazide	\N	{}
1010	Hycanthone	\N	{}
1011	Hyclate	\N	{}
1012	Gilteritinib	\N	{}
1013	Gimatecan	\N	{}
1014	Hymecromone	\N	{}
1015	Gimeracil	\N	{}
1016	Hymetellose	\N	{}
1017	Giminabant	\N	{}
1018	Giparmen	\N	{}
1019	Hyprolose	\N	{}
1020	Hypromellose	\N	{}
1021	Giracodazole	\N	{}
1022	Giractide	\N	{}
1023	Girentuximab	\N	{}
1024	Girisopam	\N	{}
1025	Giripladib	\N	{}
1026	Gisadenafil	\N	{}
1027	Histapyrrodine	\N	{}
1028	Histidine	\N	{}
1029	Histrelin	\N	{}
1030	Gitalin amorphous	\N	{}
1031	Gitaloxin	\N	{}
1032	Gitoformate	\N	{}
1033	Hyetellose	\N	{}
1034	Glaziovine	\N	{}
1035	Glasdegib	\N	{}
1036	Glaspimod	\N	{}
1037	Glafenine	\N	{}
1038	Glecaprevir	\N	{}
1039	Glemanserin	\N	{}
1040	Glembatumumab	\N	{}
1041	Glembatumumab vedotin	\N	{}
1042	Glenvastatin	\N	{}
1043	Gleptoferron	\N	{}
1044	Glesatinib	\N	{}
1045	Gliamilide	\N	{}
1046	Glibenclamide	\N	{}
1047	Glibornuride	\N	{}
1048	Glybuzole	\N	{}
1049	Glybuthiazol	\N	{}
1050	Glibutimine	\N	{}
1051	Glyhexamide	\N	{}
1052	Glidazamide	\N	{}
1053	Glisamuride	\N	{}
1054	Glisentide	\N	{}
1055	Glisindamide	\N	{}
1056	Glysobuzole	\N	{}
1057	Glisoxepide	\N	{}
1058	Glisolamide	\N	{}
1059	Glicaramide	\N	{}
1060	Gliquidone	\N	{}
1061	Gliclazide	\N	{}
1062	Glyclopyramide	\N	{}
1063	Glycobiarsol	\N	{}
1064	Glicondamide	\N	{}
1065	Glycopyrronium bromide	\N	{}
1066	Glimepiride	\N	{}
1067	Glymidine sodium	\N	{}
1068	Glyoctamide	\N	{}
1069	Glipalamide	\N	{}
1070	Glipizide	\N	{}
1071	Glypinamide	\N	{}
1072	Glyprothiazol	\N	{}
1073	Gliflumide	\N	{}
1074	Glycerol	\N	{}
1075	Glycerol phenylbutyrate	\N	{}
1076	Glicetanile	\N	{}
1077	Glycyclamide	\N	{}
1078	Glycine	\N	{}
1079	Gloxazone	\N	{}
1080	Gloximonam	\N	{}
1081	Glusoferron	\N	{}
1082	Glunicate	\N	{}
1083	Glutamine	\N	{}
1084	Glutamic acid	\N	{}
1085	Glutaral	\N	{}
1086	Glutaurine	\N	{}
1087	Glutethimide	\N	{}
1088	Glufosfamide	\N	{}
1089	Gluceptate	\N	{}
1090	Glucagon	\N	{}
1091	Glucalox	\N	{}
1092	Glucametacin	\N	{}
1093	Glucarpidase	\N	{}
1094	Glucosamine	\N	{}
1095	Glucosulfamide	\N	{}
1096	Glucosulfone	\N	{}
1097	Glucurolactone	\N	{}
1098	Glucuronamide	\N	{}
1099	Goserelin	\N	{}
1100	Gosogliptin	\N	{}
1101	Goxalapladib	\N	{}
1102	Golvatinib	\N	{}
1103	Golimumab	\N	{}
1104	Golnerminogene pradenovec	\N	{}
1105	Golodirsen	\N	{}
1106	Golotimod	\N	{}
1107	Homarylamine	\N	{}
1108	Homatropine methylbromide	\N	{}
1109	Homidium bromide	\N	{}
1110	Homopipramol	\N	{}
1111	Homosalate	\N	{}
1112	Homofenazine	\N	{}
1113	Homochlorcyclizine	\N	{}
1114	Homprenorphine	\N	{}
1115	Gonadorelin	\N	{}
1116	Serum gonadotrophin	\N	{}
1117	Chorionic gonadotrophin	\N	{}
1118	Hopantenic acid	\N	{}
1119	Goralatide	\N	{}
1120	Hoquizil	\N	{}
1121	Grazoprevir	\N	{}
1122	Gramicidin	\N	{}
1123	Gramicidin S	\N	{}
1124	Granisetron	\N	{}
1125	Granotapide	\N	{}
1126	Grapiprant	\N	{}
1127	Graunimotide	\N	{}
1128	Grepafloxacin	\N	{}
1129	Griseofulvin	\N	{}
1130	Guabenxan	\N	{}
1131	Guadecitabine	\N	{}
1132	Guamecycline	\N	{}
1133	Guanabenz	\N	{}
1134	Guanadrel	\N	{}
1135	Guanazodine	\N	{}
1136	Guanacline	\N	{}
1137	Guanethidine	\N	{}
1138	Guanisoquine	\N	{}
1139	Guanclofine	\N	{}
1140	Guanoclor	\N	{}
1141	Guanoxabenz	\N	{}
1142	Guanoxan	\N	{}
1143	Guanoxyfen	\N	{}
1144	Guanoctine	\N	{}
1145	Guancidine	\N	{}
1146	Guaraprolose	\N	{}
1147	Guafecainol	\N	{}
1148	Guacetisal	\N	{}
1149	Guselkumab	\N	{}
1150	Gusperimus	\N	{}
1151	Dabelotine	\N	{}
1152	Dabigatran etexilate	\N	{}
1153	Dabuzalgron	\N	{}
1154	Davalintide	\N	{}
1155	Davasaicin	\N	{}
1156	Davunetide	\N	{}
1157	Dagapamil	\N	{}
1158	Daglutril	\N	{}
1159	Dagrocorat	\N	{}
1160	Dazadrol	\N	{}
1161	Dasantafil	\N	{}
1162	Dasatinib	\N	{}
1163	Dazepinil	\N	{}
1164	Dazidamine	\N	{}
1165	Dazmegrel	\N	{}
1166	Dazoxiben	\N	{}
1167	Dasolampanel	\N	{}
1168	Dazolicine	\N	{}
1169	Dazopride	\N	{}
1170	Dazoquinast	\N	{}
1171	Dacarbazine	\N	{}
1172	Daclatasvir	\N	{}
1173	Daclizumab	\N	{}
1174	Daclizumab beta	\N	{}
1175	Dacomitinib	\N	{}
1176	Dacopafant	\N	{}
1177	Daxalipram	\N	{}
1178	Dactinomycin	\N	{}
1179	Dactolisib	\N	{}
1180	Dacuronium bromide	\N	{}
1181	Dalazatide	\N	{}
1182	Dalantercept	\N	{}
1183	Dalbavancin	\N	{}
1184	Dalbraminol	\N	{}
1185	Dalvastatin	\N	{}
1186	Daledalin	\N	{}
1187	Dalcotidine	\N	{}
1188	Dalotuzumab	\N	{}
1189	Dalteparin sodium	\N	{}
1190	Daltroban	\N	{}
1191	Dalfopristin	\N	{}
1192	Dalcetrapib	\N	{}
1193	Dametralast	\N	{}
1194	Damoctocog alfa pegol	\N	{}
1195	Damotepine	\N	{}
1196	Danazol	\N	{}
1197	Danaparoid sodium	\N	{}
1198	Danegaptide	\N	{}
1199	Daniplestim	\N	{}
1200	Danirixin	\N	{}
1201	Danitracen	\N	{}
1202	Daniquidone	\N	{}
1203	Danoprevir	\N	{}
1204	Danosteine	\N	{}
1205	Danofloxacin	\N	{}
1206	Dantrolene	\N	{}
1207	Dantron	\N	{}
1208	Danusertib	\N	{}
1209	Dapabutan	\N	{}
1210	Dapagliflozin	\N	{}
1211	Dapaconazole	\N	{}
1212	Dapansutrile	\N	{}
1213	Dapivirine	\N	{}
1214	Dapiclermin	\N	{}
1215	Dapiprazole	\N	{}
1216	Dapirolizumab pegol	\N	{}
1217	Dapitant	\N	{}
1218	Dapoxetine	\N	{}
1219	Daporinad	\N	{}
1220	Daprodustat	\N	{}
1221	Dapsone	\N	{}
1222	Daptomycin	\N	{}
1223	Darapladib	\N	{}
1224	Daratumumab	\N	{}
1225	Darbufelone	\N	{}
1226	Darbepoetin alfa	\N	{}
1227	Darglitazone	\N	{}
1228	Darenzepine	\N	{}
1229	Darinaparsin	\N	{}
1230	Darifenacin	\N	{}
1231	Darodipine	\N	{}
1232	Darolutamide	\N	{}
1233	Daropate	\N	{}
1234	Darotropium bromide	\N	{}
1235	Darsidomine	\N	{}
1236	Darusentan	\N	{}
1237	Darunavir	\N	{}
1238	Dasabuvir	\N	{}
1239	Dasotraline	\N	{}
1240	Datelliptium chloride	\N	{}
1241	Daunorubicin	\N	{}
1242	Dacemazine	\N	{}
1243	Dacetuzumab	\N	{}
1244	Dacinostat	\N	{}
1245	Dacisteine	\N	{}
1246	Deanil	\N	{}
1247	Deanol aceglumate	\N	{}
1248	Deboxamet	\N	{}
1249	Debrisoquine	\N	{}
1250	Debropol	\N	{}
1251	Devazepide	\N	{}
1252	Devapamil	\N	{}
1253	Degarelix	\N	{}
1254	Dehydrocholic acid	\N	{}
1255	Dehydroemetine	\N	{}
1256	Deditonium bromide	\N	{}
1257	Dezaguanine	\N	{}
1258	Dezamizumab	\N	{}
1259	Desaspidin	\N	{}
1260	Desglugastrin	\N	{}
1261	Deserpidine	\N	{}
1262	Dezinamide	\N	{}
1263	Desipramine	\N	{}
1264	Desirudin	\N	{}
1265	Desloratadine	\N	{}
1266	Deslorelin	\N	{}
1267	Desmeninol	\N	{}
1268	Desmethylmoramide	\N	{}
1269	Desmoteplase	\N	{}
1270	Desogestrel	\N	{}
1271	Desocriptine	\N	{}
1272	Desoxycortone	\N	{}
1273	Desoximetasone	\N	{}
1274	Deoxycholic acid	\N	{}
1275	Desomorphine	\N	{}
1276	Dezocine	\N	{}
1277	Decamethonium bromide	\N	{}
1278	Dequalinium chloride	\N	{}
1279	Declenperone	\N	{}
1280	Decloxizine	\N	{}
1281	Declopramide	\N	{}
1282	Decoglurant	\N	{}
1283	Decominol	\N	{}
1284	Decoquinate	\N	{}
1285	Dexamethasone	\N	{}
1286	Dexamethasone acefurate	\N	{}
1287	Dexamethasone cipecilate	\N	{}
1288	Dexamisole	\N	{}
1289	Dexamfetamine	\N	{}
1290	Dexbrompheniramine	\N	{}
1291	Dexbudesonide	\N	{}
1292	Dexverapamil	\N	{}
1293	Dexelvucitabine	\N	{}
1294	Dexefaroxan	\N	{}
1295	Dexibuprofen	\N	{}
1296	Dexivacaine	\N	{}
1297	Dexisometheptene	\N	{}
1298	Deximafen	\N	{}
1299	Dexindoprofen	\N	{}
1300	Dexketoprofen	\N	{}
1301	Dexclamol	\N	{}
1302	Dexlansoprazole	\N	{}
1303	Dexloxiglumide	\N	{}
1304	Dexlofexidine	\N	{}
1305	Dexmedetomidine	\N	{}
1306	Dexmecamylamine	\N	{}
1307	Dexmethylphenidate	\N	{}
1308	Dexnafenodone	\N	{}
1309	Dexnebivolol	\N	{}
1310	Dexniguldipine	\N	{}
1311	Dexoxadrol	\N	{}
1312	Dexormaplatin	\N	{}
1313	Dexpanthenol	\N	{}
1314	Dexpemedolac	\N	{}
1315	Dexpramipexole	\N	{}
1316	Dexproxibutene	\N	{}
1317	Dexpropranolol	\N	{}
1318	Dexrazoxane	\N	{}
1319	Dexsecoverine	\N	{}
1320	Dexsotalol	\N	{}
1321	Dextilidine	\N	{}
1322	Dextiopronin	\N	{}
1323	Dextofisopam	\N	{}
1324	Dextran	\N	{}
1325	Dextranomer	\N	{}
1326	Dextriferron	\N	{}
1327	Dextromethorphan	\N	{}
1328	Dextromoramide	\N	{}
1329	Dextropropoxyphene	\N	{}
1330	Dextrorphan	\N	{}
1331	Dextrothyroxine sodium	\N	{}
1332	Dextrofemine	\N	{}
1333	Dexfenfluramine	\N	{}
1334	Dexfosfoserine	\N	{}
1335	Dexchlorpheniramine	\N	{}
1336	Dexecadotril	\N	{}
1337	Dexetimide	\N	{}
1338	Dexetozoline	\N	{}
1339	Dectaflur	\N	{}
1340	Dectrekumab	\N	{}
1341	Delavirdine	\N	{}
1342	Delamanid	\N	{}
1343	Delanzomib	\N	{}
1344	Delanterone	\N	{}
1345	Delapril	\N	{}
1346	Delafloxacin	\N	{}
1347	Deldeprevir	\N	{}
1348	Delequamine	\N	{}
1349	Deleobuvir	\N	{}
1350	Delergotrile	\N	{}
1351	Deligoparin sodium	\N	{}
1352	Delimotecan	\N	{}
1353	Delcasertib	\N	{}
1354	Delmadinone	\N	{}
1355	Delmetacin	\N	{}
1356	Delmopinol	\N	{}
1357	Deloxolone	\N	{}
1358	Delorazepam	\N	{}
1359	Delparantag	\N	{}
1360	Delprostenate	\N	{}
1361	Deltibant	\N	{}
1362	Delucemine	\N	{}
1363	Delfantrine	\N	{}
1364	Delfaprazine	\N	{}
1365	Delmitide	\N	{}
1366	Dembrexine	\N	{}
1367	Demegestone	\N	{}
1368	Demecarium bromide	\N	{}
1369	Demeclocycline	\N	{}
1370	Demecolcine	\N	{}
1371	Demexiptiline	\N	{}
1372	Demelverine	\N	{}
1373	Demecycline	\N	{}
1374	Demiditraz	\N	{}
1375	Democonazole	\N	{}
1376	Demoxepam	\N	{}
1377	Demoxytocin	\N	{}
1378	Demcizumab	\N	{}
1379	Denaverine	\N	{}
1380	Denagliptin	\N	{}
1381	Denatonium benzoate	\N	{}
1382	Denbufylline	\N	{}
1383	Denenicokin	\N	{}
1384	Denzimol	\N	{}
1385	Denibulin	\N	{}
1386	Denileukin diftitox	\N	{}
1387	Denintuzumab mafodotin	\N	{}
1388	Denipride	\N	{}
1389	Denopamine	\N	{}
1390	Denosumab	\N	{}
1391	Denotivir	\N	{}
1392	Denpidazone	\N	{}
1393	Denufosol	\N	{}
1394	Depatuxizumab	\N	{}
1395	Depatuxizumab mafodotin	\N	{}
1396	Depelestat	\N	{}
1397	Depramine	\N	{}
1398	Depreotide	\N	{}
1399	Deprodone	\N	{}
1400	Deprostil	\N	{}
1401	Deptropine	\N	{}
1402	Deracoxib	\N	{}
1403	Deramciclane	\N	{}
1404	Derenofylline	\N	{}
1405	Deriglidole	\N	{}
1406	Derquantel	\N	{}
1407	Derpanicate	\N	{}
1408	Dersalazine	\N	{}
1409	Desvenlafaxine	\N	{}
1410	Deslanoside	\N	{}
1411	Desmopressin	\N	{}
1412	Desonide	\N	{}
1413	Desfesoterodine	\N	{}
1414	Desflurane	\N	{}
1415	Desciclovir	\N	{}
1416	Descinolone	\N	{}
1417	Detajmium bitartrate	\N	{}
1418	Detanosal	\N	{}
1419	Deterenol	\N	{}
1420	Detiviciclovir	\N	{}
1421	Detirelix	\N	{}
1422	Detomidine	\N	{}
1423	Detorubicin	\N	{}
1424	Detralfate	\N	{}
1425	Detrothyronine	\N	{}
1426	Detumomab	\N	{}
1427	Deudextromethorphan	\N	{}
1428	Deutetrabenazine	\N	{}
1429	Deutolperisone	\N	{}
1430	Defactinib	\N	{}
1431	Deferasirox	\N	{}
1432	Deferiprone	\N	{}
1433	Deferitazole	\N	{}
1434	Deferitrin	\N	{}
1435	Deferoxamine	\N	{}
1436	Defibrotide	\N	{}
1437	Deflazacort	\N	{}
1438	Defoslimod	\N	{}
1439	Defosfamide	\N	{}
1440	Decernotinib	\N	{}
1441	Decil	\N	{}
1442	Decimemide	\N	{}
1443	Decitabine	\N	{}
1444	Decitropine	\N	{}
1445	Josamycin	\N	{}
1446	Diaveridine	\N	{}
1447	Diazepam	\N	{}
1448	Diaziquone	\N	{}
1449	Diazoxide	\N	{}
1450	Diamocaine	\N	{}
1451	Diampromide	\N	{}
1452	Diamfenetide	\N	{}
1453	Dianhydrogalactitol	\N	{}
1454	Dianexin	\N	{}
1455	Dianicline	\N	{}
1456	Diaplasinin	\N	{}
1457	Diarbarone	\N	{}
1458	Diacerein	\N	{}
1459	Diacetamate	\N	{}
1460	Diacetolol	\N	{}
1461	Dibekacin	\N	{}
1462	Dibemethine	\N	{}
1463	Dibenzepin	\N	{}
1464	Dibotermin alfa	\N	{}
1465	Dibrompropamidine	\N	{}
1466	Dibromsalan	\N	{}
1467	Dibrospidium chloride	\N	{}
1468	Dibudinate	\N	{}
1469	Dibusadol	\N	{}
1470	Dibunate	\N	{}
1471	Dibupyrone	\N	{}
1472	Dibuprol	\N	{}
1473	Divabuterol	\N	{}
1474	Divaplon	\N	{}
1475	Dihexyverine	\N	{}
1476	Dihydralazine	\N	{}
1477	Dihydrocodeine	\N	{}
1478	Dihydrostreptomycin	\N	{}
1479	Dihydrotachysterol	\N	{}
1480	Dihydroergotamine	\N	{}
1481	Digitoxin	\N	{}
1482	Digolil	\N	{}
1483	Didanosine	\N	{}
1484	Didrovaltrate	\N	{}
1485	Dydrogesterone	\N	{}
1486	Dienogest	\N	{}
1487	Dienestrol	\N	{}
1488	Dizatrifone	\N	{}
1489	Disiquonium chloride	\N	{}
1490	Disobutamide	\N	{}
1491	Disogluside	\N	{}
1492	Disoxaril	\N	{}
1493	Disopyramide	\N	{}
1494	Disofenin	\N	{}
1495	Dizocilpine	\N	{}
1496	Diisopromine	\N	{}
1497	Diiodohydroxyquinoline	\N	{}
1498	Dipotassium clorazepate	\N	{}
1499	Dicarbine	\N	{}
1500	Dicarfen	\N	{}
1501	Diquafosol	\N	{}
1502	Diclazuril	\N	{}
1503	Dicloxacillin	\N	{}
1504	Diclometide	\N	{}
1505	Diclonixin	\N	{}
1506	Dyclonine	\N	{}
1507	Diclofenac	\N	{}
1508	Diclofenac etalhyaluronate	\N	{}
1509	Diclofenamide	\N	{}
1510	Diclofensine	\N	{}
1511	Diclofurime	\N	{}
1512	Dicobalt edetate	\N	{}
1513	Dicolinium iodide	\N	{}
1514	Dicresulene	\N	{}
1515	Dixanthogen	\N	{}
1516	Dicoumarol	\N	{}
1517	Dilazep	\N	{}
1518	Dilevalol	\N	{}
1519	Dilmapimod	\N	{}
1520	Dilmefone	\N	{}
1521	Diloxanide	\N	{}
1522	Dilopetine	\N	{}
1523	Dimabefylline	\N	{}
1524	Dimadectin	\N	{}
1525	Dimazole	\N	{}
1526	Dimantine	\N	{}
1527	Dimevamide	\N	{}
1528	Dimesone	\N	{}
1529	Dimecamine	\N	{}
1530	Dimecolonium iodide	\N	{}
1531	Dimecrotic acid	\N	{}
1532	Dimelazine	\N	{}
1533	Dimemorfan	\N	{}
1534	Dimenhydrinate	\N	{}
1535	Dimenoxadol	\N	{}
1536	Dimepranol	\N	{}
1537	Dimepregnen	\N	{}
1538	Dimeprozan	\N	{}
1539	Dimercaprol	\N	{}
1540	Dimesna	\N	{}
1541	Dimethadione	\N	{}
1542	Dimethazan	\N	{}
1543	Dimetacrine	\N	{}
1544	Dimetamfetamine	\N	{}
1545	Dimeticone	\N	{}
1546	Dimethyl sulfoxide	\N	{}
1547	Dimethylthiambutene	\N	{}
1548	Dimethyltubocurarinium chloride	\N	{}
1549	Dimetindene	\N	{}
1550	Dimethiodal sodium	\N	{}
1551	Dimetipirium bromide	\N	{}
1552	Dimethisterone	\N	{}
1553	Dimethoxanate	\N	{}
1554	Dimetholizine	\N	{}
1555	Dimetotiazine	\N	{}
1556	Dimetofrine	\N	{}
1557	Dimetridazole	\N	{}
1558	Dimefadane	\N	{}
1559	Dimepheptanol	\N	{}
1560	Dimefline	\N	{}
1561	Diminazene	\N	{}
1562	Dimiracetam	\N	{}
1563	Dimoxaprost	\N	{}
1564	Dimoxyline	\N	{}
1565	Dimpylate	\N	{}
1566	Dinazafone	\N	{}
1567	Dinalin	\N	{}
1568	Dinaciclib	\N	{}
1569	Diniprofylline	\N	{}
1570	Dinitolmide	\N	{}
1571	Dinoprost	\N	{}
1572	Dinoprostone	\N	{}
1573	Dinsed	\N	{}
1574	Dinutuximab	\N	{}
1575	Dinutuximab beta	\N	{}
1576	Diodone	\N	{}
1577	Dioxadilol	\N	{}
1578	Dioxadrol	\N	{}
1579	Dioxamate	\N	{}
1580	Dioxation	\N	{}
1581	Dioxaphetyl butyrate	\N	{}
1582	Dioxethedrin	\N	{}
1583	Dioxybenzone	\N	{}
1584	Dioxifedrine	\N	{}
1585	Diolamine	\N	{}
1586	Diosmin	\N	{}
1587	Diperodon	\N	{}
1588	Dipivefrine	\N	{}
1589	Dipipanone	\N	{}
1590	Dipiproverine	\N	{}
1591	Dipyridamole	\N	{}
1592	Dipyrithione	\N	{}
1593	Dipyrocetyl	\N	{}
1594	Diponium bromide	\N	{}
1595	Dipraglurant	\N	{}
1596	Diprafenone	\N	{}
1597	Diprenorphine	\N	{}
1598	Diprobutine	\N	{}
1599	Diprogulic acid	\N	{}
1600	Diproqualone	\N	{}
1601	Diproxadol	\N	{}
1602	Diproleandomycin	\N	{}
1603	Diproteverine	\N	{}
1604	Diprofene	\N	{}
1605	Diprophylline	\N	{}
1606	Diridavumab	\N	{}
1607	Dirithromycin	\N	{}
1608	Dirlotapide	\N	{}
1609	Diroximel fumarate	\N	{}
1610	Dirucotide	\N	{}
1611	Disermolide	\N	{}
1612	Disitertide	\N	{}
1613	Disomotide	\N	{}
1614	Distigmine bromide	\N	{}
1615	Disulergine	\N	{}
1616	Disulfamide	\N	{}
1617	Disulfiram	\N	{}
1618	Disuprazole	\N	{}
1619	Disufenton sodium	\N	{}
1620	Ditazole	\N	{}
1621	Ditekiren	\N	{}
1622	Ditercalinium chloride	\N	{}
1623	Dithiazanine iodide	\N	{}
1624	Ditiocarb sodium	\N	{}
1625	Ditiomustine	\N	{}
1626	Ditolamide	\N	{}
1627	Ditophal	\N	{}
1628	Dithranol	\N	{}
1629	Difebarbamate	\N	{}
1630	Difelikefalin	\N	{}
1631	Diphemanil metilsulfate	\N	{}
1632	Difemerine	\N	{}
1633	Difemetorex	\N	{}
1634	Diphenadione	\N	{}
1635	Difenamizole	\N	{}
1636	Diphenan	\N	{}
1637	Diphenhydramine	\N	{}
1638	Difenidol	\N	{}
1639	Diphenylpyraline	\N	{}
1640	Difencloxazine	\N	{}
1641	Diphenoxylate	\N	{}
1642	Difenoximide	\N	{}
1643	Difenoxin	\N	{}
1644	Difetarsone	\N	{}
1645	Difeterol	\N	{}
1646	Difloxacin	\N	{}
1647	Diflomotecan	\N	{}
1648	Diflorasone	\N	{}
1649	Difluanazine	\N	{}
1650	Diflucortolone	\N	{}
1651	Diflumidone	\N	{}
1652	Diflunisal	\N	{}
1653	Difluprednate	\N	{}
1654	Diphoxazide	\N	{}
1655	Diftalone	\N	{}
1656	Dicloralurea	\N	{}
1657	Dichlorvos	\N	{}
1658	Dichlorisone	\N	{}
1659	Dichlormezanone	\N	{}
1660	Dichloroxylenol	\N	{}
1661	Dichlorophen	\N	{}
1662	Dichlorophenarsine	\N	{}
1663	Dicycloverine	\N	{}
1664	Dicirenone	\N	{}
1665	Diciferron	\N	{}
1666	Dieldrin	\N	{}
1667	Diethadione	\N	{}
1668	Diethazine	\N	{}
1669	Diethylcarbamazine	\N	{}
1670	Diethylstilbestrol	\N	{}
1671	Diethylthiambutene	\N	{}
1672	Diethyltoluamide	\N	{}
1673	Diathymosulfone	\N	{}
1674	Dietifen	\N	{}
1675	Dobupride	\N	{}
1676	Dobutamine	\N	{}
1677	Dovitinib	\N	{}
1678	Dodeclonium bromide	\N	{}
1679	Dosergoside	\N	{}
1680	Docarpamine	\N	{}
1681	Doqualast	\N	{}
1682	Docosil	\N	{}
1683	Doconazole	\N	{}
1684	Doconexent	\N	{}
1685	Doxacurium chloride	\N	{}
1686	Doxaminol	\N	{}
1687	Doxapram	\N	{}
1688	Doxaprost	\N	{}
1689	Doxenitoin	\N	{}
1690	Doxepin	\N	{}
1691	Doxefazepam	\N	{}
1692	Doxibetasol	\N	{}
1693	Doxylamine	\N	{}
1694	Doxifluridine	\N	{}
1695	Doxycycline	\N	{}
1696	Doxorubicin	\N	{}
1697	Doxofylline	\N	{}
1698	Doxpicomine	\N	{}
1699	Doxercalciferol	\N	{}
1700	Docusate sodium	\N	{}
1701	Dolasetron	\N	{}
1702	Doliracetam	\N	{}
1703	Dolcanatide	\N	{}
1704	Dolutegravir	\N	{}
1705	Domagrozumab	\N	{}
1706	Domazoline	\N	{}
1707	Domiodol	\N	{}
1708	Domipizone	\N	{}
1709	Domitroban	\N	{}
1710	Domiphen bromide	\N	{}
1711	Domoxin	\N	{}
1712	Domoprednate	\N	{}
1713	Domperidone	\N	{}
1714	Donepezil	\N	{}
1715	Donetidine	\N	{}
1716	Donitriptan	\N	{}
1717	Dopamantine	\N	{}
1718	Dopamine	\N	{}
1719	Dopexamine	\N	{}
1720	Dopropidil	\N	{}
1721	Doravirine	\N	{}
1722	Doramapimod	\N	{}
1723	Doramectin	\N	{}
1724	Doranidazole	\N	{}
1725	Dorastine	\N	{}
1726	Doreptide	\N	{}
1727	Doretinel	\N	{}
1728	Dorzolamide	\N	{}
1729	Doripenem	\N	{}
1730	Dorlimomab aritox	\N	{}
1731	Dornase alfa	\N	{}
1732	Dosmalfate	\N	{}
1733	Dosulepin	\N	{}
1734	Dotarizine	\N	{}
1735	Dotefonium bromide	\N	{}
1736	Dofamium chloride	\N	{}
1737	Dofetilide	\N	{}
1738	Dofequidar	\N	{}
1739	Dofosfate	\N	{}
1740	Docebenone	\N	{}
1741	Docetaxel	\N	{}
1742	Dociparstat sodium	\N	{}
1743	Drazidox	\N	{}
1744	Dramedilol	\N	{}
1745	Draflazine	\N	{}
1746	Draquinolol	\N	{}
1747	Dribendazole	\N	{}
1748	Drinabant	\N	{}
1749	Drinidene	\N	{}
1750	Drisapersen	\N	{}
1751	Drobuline	\N	{}
1752	Drozitumab	\N	{}
1753	Droclidinium bromide	\N	{}
1754	Droxacin	\N	{}
1755	Droxidopa	\N	{}
1756	Droxicainide	\N	{}
1757	Droxicam	\N	{}
1758	Droxinavir	\N	{}
1759	Droxypropine	\N	{}
1760	Droloxifene	\N	{}
1761	Drometrizole	\N	{}
1762	Dronabinol	\N	{}
1763	Dropempine	\N	{}
1764	Droperidol	\N	{}
1765	Droprenilamine	\N	{}
1766	Dropropizine	\N	{}
1767	Drospirenone	\N	{}
1768	Drostanolone	\N	{}
1769	Drotaverine	\N	{}
1770	Drotebanol	\N	{}
1771	Drotrecogin alfa (activated)	\N	{}
1772	Drofenine	\N	{}
1773	Drocinonide	\N	{}
1774	Duazomycin	\N	{}
1775	Duvelisib	\N	{}
1776	Duvoglustat	\N	{}
1777	Dulaglutide	\N	{}
1778	Dulanermin	\N	{}
1779	Duligotuzumab	\N	{}
1780	Dulozafone	\N	{}
1781	Duloxetine	\N	{}
1782	Dulofibrate	\N	{}
1783	Dumorelin	\N	{}
1784	Duometacin	\N	{}
1785	Duoperone	\N	{}
1786	Dupilumab	\N	{}
1787	Dupracetam	\N	{}
1788	Durvalumab	\N	{}
1789	Dusigitumab	\N	{}
1790	Dusquetide	\N	{}
1791	Dutacatib	\N	{}
1792	Dutasteride	\N	{}
1793	Duteplase	\N	{}
1794	Dutogliptin	\N	{}
1795	Technetium (99mTc) etarfolatide	\N	{}
1796	Ferric (59Fe) citrate injection	\N	{}
1797	Ferric derisomaltose	\N	{}
1798	Ferric carboxymaltose	\N	{}
1799	Ferric maltol	\N	{}
1800	Zabicipril	\N	{}
1801	Zabiciprilat	\N	{}
1802	Zabofloxacin	\N	{}
1803	Zacopride	\N	{}
1804	Zaldaride	\N	{}
1805	Zaleplon	\N	{}
1806	Zalospirone	\N	{}
1807	Zaltidine	\N	{}
1808	Zaltoprofen	\N	{}
1809	Zalutumumab	\N	{}
1810	Zalcitabine	\N	{}
1811	Zamicastat	\N	{}
1812	Zamifenacin	\N	{}
1813	Zanamivir	\N	{}
1814	Zanapezil	\N	{}
1815	Zankiren	\N	{}
1816	Zanolimumab	\N	{}
1817	Zanoterone	\N	{}
1818	Zapizolam	\N	{}
1819	Zaprinast	\N	{}
1820	Zardaverine	\N	{}
1821	Zastumotide	\N	{}
1822	Zatebradine	\N	{}
1823	Zatosetron	\N	{}
1824	Zaurategrast	\N	{}
1825	Zafirlukast	\N	{}
1826	Zafuleptine	\N	{}
1827	Zelandopam	\N	{}
1828	Zenarestat	\N	{}
1829	Zeniplatin	\N	{}
1830	Zepastine	\N	{}
1831	Zeranol	\N	{}
1832	Zetidoline	\N	{}
1833	Zibotentan	\N	{}
1834	Zibrofusidic acid	\N	{}
1835	Zidapamide	\N	{}
1836	Zidebactam	\N	{}
1837	Zidovudine	\N	{}
1838	Zidometacin	\N	{}
1839	Ziconotide	\N	{}
1840	Zicronapine	\N	{}
1841	Zilantel	\N	{}
1842	Zilascorb (2H)	\N	{}
1843	Zileuton	\N	{}
1844	Zylofuramine	\N	{}
1845	Zilpaterol	\N	{}
1846	Zimeldine	\N	{}
1847	Zimidoben	\N	{}
1848	Zinviroxime	\N	{}
1849	Zindoxifene	\N	{}
1850	Zindotrine	\N	{}
1851	Zinoconazole	\N	{}
1852	Zinostatin	\N	{}
1853	Zinostatin stimalamer	\N	{}
1854	Zinterol	\N	{}
1855	Zipeprol	\N	{}
1856	Ziprasidone	\N	{}
1857	Ziralimumab	\N	{}
1858	Zifrosilone	\N	{}
1859	Zocainone	\N	{}
1860	Zoxazolamine	\N	{}
1861	Zolazepam	\N	{}
1862	Zolamine	\N	{}
1863	Zolasartan	\N	{}
1864	Zoledronic acid	\N	{}
1865	Zolenzepine	\N	{}
1866	Zoleprodolol	\N	{}
1867	Zolertine	\N	{}
1868	Zolimidine	\N	{}
1869	Zolimomab aritox	\N	{}
1870	Zoliprofen	\N	{}
1871	Zoliflodacin	\N	{}
1872	Zolmitriptan	\N	{}
1873	Zoloperone	\N	{}
1874	Gold (198Au) colloidal	\N	{}
1875	Zolpidem	\N	{}
1876	Zomebazam	\N	{}
1877	Zomepirac	\N	{}
1878	Zonampanel	\N	{}
1879	Zoniclezole	\N	{}
1880	Zoniporide	\N	{}
1881	Zonisamide	\N	{}
1882	Zopiclone	\N	{}
1883	Zopolrestat	\N	{}
1884	Zoptarelin doxorubicin	\N	{}
1885	Zorubicin	\N	{}
1886	Zosuquidar	\N	{}
1887	Zotarolimus	\N	{}
1888	Zotepine	\N	{}
1889	Zoticasone	\N	{}
1890	Zofenopril	\N	{}
1891	Zofenoprilat	\N	{}
1892	Zoficonazole	\N	{}
1893	Zucapsaicin	\N	{}
1894	Zuclomifene	\N	{}
1895	Zuclopenthixol	\N	{}
1896	Zuretinol acetate	\N	{}
1897	Ibazocine	\N	{}
1898	Ibalizumab	\N	{}
1899	Ibandronic acid	\N	{}
1900	Ibafloxacin	\N	{}
1901	Ibacitabine	\N	{}
1902	Ibipinabant	\N	{}
1903	Ibodutant	\N	{}
1904	Iboctadekin	\N	{}
1905	Ibopamine	\N	{}
1906	Ibritumomab tiuxetan	\N	{}
1907	Ibrolipim	\N	{}
1908	Ibrotamide	\N	{}
1909	Ibrutinib	\N	{}
1910	Ibuverine	\N	{}
1911	Ibudilast	\N	{}
1912	Ibuproxam	\N	{}
1913	Ibuprofen	\N	{}
1914	Ibutamoren	\N	{}
1915	Ibuterol	\N	{}
1916	Ibutilide	\N	{}
1917	Ibufenac	\N	{}
1918	Ivacaftor	\N	{}
1919	Ivarimod	\N	{}
1920	Ivermectin	\N	{}
1921	Ivosidenib	\N	{}
1922	Ivoqualine	\N	{}
1923	Iganidipine	\N	{}
1924	Igmesine	\N	{}
1925	Igovomab	\N	{}
1926	Iguratimod	\N	{}
1927	Idaverine	\N	{}
1928	Idazoxan	\N	{}
1929	Idalopirdine	\N	{}
1930	Idarubicin	\N	{}
1931	Idarucizumab	\N	{}
1932	Idasanutlin	\N	{}
1933	Idebenone	\N	{}
1934	Idelalisib	\N	{}
1935	Idenast	\N	{}
1936	Idoxifene	\N	{}
1937	Idoxuridine	\N	{}
1938	Idrabiotaparinux sodium	\N	{}
1939	Idralfidine	\N	{}
1940	Idramantone	\N	{}
1941	Idraparinux sodium	\N	{}
1942	Idrapril	\N	{}
1943	Idremcinal	\N	{}
1944	Idronoxil	\N	{}
1945	Idropranolol	\N	{}
1946	Idrocilamide	\N	{}
1947	Idursulfase	\N	{}
1948	Idursulfase beta	\N	{}
1949	Isavuconazole	\N	{}
1950	Isavuconazonium chloride	\N	{}
1951	Isaglidole	\N	{}
1952	Isaxonine	\N	{}
1953	Isalsteine	\N	{}
1954	Isamoxole	\N	{}
1955	Isamfazone	\N	{}
1956	Isatoribine	\N	{}
1957	Isbogrel	\N	{}
1958	Isbufylline	\N	{}
1959	Iseganan	\N	{}
1960	Isepamicin	\N	{}
1961	Isetionate	\N	{}
1962	Isoaminile	\N	{}
1963	Isobromindione	\N	{}
1964	Isobutamben	\N	{}
1965	Isocarboxazid	\N	{}
1966	Isoconazole	\N	{}
1967	Isocromil	\N	{}
1968	Isoxaprolol	\N	{}
1969	Isoxepac	\N	{}
1970	Isoxicam	\N	{}
1971	Isoxsuprine	\N	{}
1972	Isoleucine	\N	{}
1973	Isomazole	\N	{}
1974	Isomethadone	\N	{}
1975	Isometamidium chloride	\N	{}
1976	Isometheptene	\N	{}
1977	Isomolpan	\N	{}
1978	Isoniazid	\N	{}
1979	Isonixin	\N	{}
1980	Izonsteride	\N	{}
1981	Isoprazone	\N	{}
1982	Isoprednidene	\N	{}
1983	Isoprenaline	\N	{}
1984	Isopropamide iodide	\N	{}
1985	Isopropicillin	\N	{}
1986	Isoprofen	\N	{}
1987	Isosorbide	\N	{}
1988	Isosorbide dinitrate	\N	{}
1989	Isosorbide mononitrate	\N	{}
1990	Isospaglumic acid	\N	{}
1991	Isosulpride	\N	{}
1992	Isothipendyl	\N	{}
1993	Isotiquimide	\N	{}
1994	Isotretinoin	\N	{}
1995	Isofezolac	\N	{}
1996	Isoflupredone	\N	{}
1997	Isoflurane	\N	{}
1998	Isoetarine	\N	{}
1999	Icaridin	\N	{}
2000	Icatibant	\N	{}
2001	Iclazepam	\N	{}
2002	Iclaprim	\N	{}
2003	Icodextrin	\N	{}
2004	Icoduline	\N	{}
2005	Icosapent	\N	{}
2006	Icometasone enbutate	\N	{}
2007	Icomucret	\N	{}
2008	Icopezil	\N	{}
2009	Icosabutate	\N	{}
2010	Icospiramide	\N	{}
2011	Icofungipen	\N	{}
2012	Icrocaptide	\N	{}
2013	Icrucumab	\N	{}
2014	Ixabepilone	\N	{}
2015	Ixazomib	\N	{}
2016	Ixekizumab	\N	{}
2017	Ilaprazole	\N	{}
2018	Ilatreotide	\N	{}
2019	Ilepatril	\N	{}
2020	Ilepcimide	\N	{}
2021	Iliparcil	\N	{}
2022	Ilmetropium iodide	\N	{}
2023	Ilmofosine	\N	{}
2024	Ilodecakin	\N	{}
2025	Ilomastat	\N	{}
2026	Ilonidap	\N	{}
2027	Iloperidone	\N	{}
2028	Iloprost	\N	{}
2029	Ilorasertib	\N	{}
2030	Imagabalin	\N	{}
2031	Imazodan	\N	{}
2032	Imalumab	\N	{}
2033	Imanixil	\N	{}
2034	Imatinib	\N	{}
2035	Imafen	\N	{}
2036	Imgatuzumab	\N	{}
2037	Imeglimin	\N	{}
2038	Imexon	\N	{}
2039	Imepitoin	\N	{}
2040	Imetelstat	\N	{}
2041	Imiglitazar	\N	{}
2042	Imiglucerase	\N	{}
2043	Imidazole salicylate	\N	{}
2044	Imidapril	\N	{}
2045	Imidaprilat	\N	{}
2046	Imidafenacin	\N	{}
2047	Imidocarb	\N	{}
2048	Imidoline	\N	{}
2049	Imisopasem manganese	\N	{}
2050	Imiclopazine	\N	{}
2051	Imiloxan	\N	{}
2052	Iminophenimide	\N	{}
2053	Imipenem	\N	{}
2054	Imipramine	\N	{}
2055	Imipraminoxide	\N	{}
2056	Imirestat	\N	{}
2057	Imitrodast	\N	{}
2058	Imiquimod	\N	{}
2059	Imcarbofos	\N	{}
2060	Imlatoclax	\N	{}
2061	Imoxiterol	\N	{}
2062	Imolamine	\N	{}
2063	Impacarzine	\N	{}
2064	Implitapide	\N	{}
2065	Impromidine	\N	{}
2066	Improsulfan	\N	{}
2067	Imuracetam	\N	{}
2068	Imciromab	\N	{}
2069	Inakalant	\N	{}
2070	Inaperisone	\N	{}
2071	Ingenol disoxate	\N	{}
2072	Ingenol mebutate	\N	{}
2073	Ingliforib	\N	{}
2074	Indacaterol	\N	{}
2075	Indacrinone	\N	{}
2076	Indalpine	\N	{}
2077	Indanazoline	\N	{}
2078	Indanidine	\N	{}
2079	Indanorex	\N	{}
2080	Indantadol	\N	{}
2081	Indatraline	\N	{}
2082	Indatuximab ravtansine	\N	{}
2083	Indeglitazar	\N	{}
2084	Indecainide	\N	{}
2085	Indeloxazine	\N	{}
2086	Indenolol	\N	{}
2087	Indibulin	\N	{}
2088	Indimilast	\N	{}
2089	Indinavir	\N	{}
2090	Indiplon	\N	{}
2091	Indisetron	\N	{}
2092	Indisulam	\N	{}
2093	Indobufen	\N	{}
2094	Indocate	\N	{}
2095	Indoximod	\N	{}
2096	Indoxole	\N	{}
2097	Indolapril	\N	{}
2098	Indolidan	\N	{}
2099	Indometacin	\N	{}
2100	Indopanolol	\N	{}
2101	Indopine	\N	{}
2102	Indoprofen	\N	{}
2103	Indoramin	\N	{}
2104	Indorenate	\N	{}
2105	Indriline	\N	{}
2106	Indusatumab	\N	{}
2107	Indusatumab vedotin	\N	{}
2108	Inebilizumab	\N	{}
2109	Inecalcitol	\N	{}
2110	Inicarone	\N	{}
2111	Iniparib	\N	{}
2112	Incadronic acid	\N	{}
2113	Inclacumab	\N	{}
2114	Inclisiran	\N	{}
2115	Inogatran	\N	{}
2116	Inosine	\N	{}
2117	Inositol nicotinate	\N	{}
2118	Inocoterone	\N	{}
2119	Inolimomab	\N	{}
2120	Inotersen	\N	{}
2121	Inotuzumab ozogamicin	\N	{}
2122	Inproquone	\N	{}
2123	Insulin argine	\N	{}
2124	Insulin aspart	\N	{}
2125	Insulin glargine	\N	{}
2126	Insulin glulisine	\N	{}
2127	Biphasic insulin injection	\N	{}
2128	Dalanated insulin	\N	{}
2129	Insulin degludec	\N	{}
2130	Insulin detemir	\N	{}
2131	Insulin defalan	\N	{}
2132	Insulin lispro	\N	{}
2133	Neutral insulin injection	\N	{}
2134	Insulin peglispro	\N	{}
2135	Insulin tregopil	\N	{}
2136	Globin zinc insulin injection	\N	{}
2137	Insulin human	\N	{}
2138	Isophane insulin	\N	{}
2139	Compound insulin zinc suspension	\N	{}
2140	Insulin zinc suspension (amorphous)	\N	{}
2141	Insulin zinc suspension (crystalline)	\N	{}
2142	Intepirdine	\N	{}
2143	Intermedine	\N	{}
2144	Interferon alfa	\N	{}
2145	Interferon alfacon-1	\N	{}
2146	Interferon beta	\N	{}
2147	Interferon gamma	\N	{}
2148	Intetumumab	\N	{}
2149	Intiquinatine	\N	{}
2150	Intoplicine	\N	{}
2151	Intrazole	\N	{}
2152	Intriptyline	\N	{}
2153	Infigratinib	\N	{}
2154	Infliximab	\N	{}
2155	Incyclinide	\N	{}
2156	Iobenguane (131I)	\N	{}
2157	Iobenzamic acid	\N	{}
2158	Iobitridol	\N	{}
2159	Iobutoic acid	\N	{}
2160	Ioversol	\N	{}
2161	Iohexol	\N	{}
2162	Ioglycamic acid	\N	{}
2163	Ioglicic acid	\N	{}
2164	Ioglucol	\N	{}
2165	Ioglucomide	\N	{}
2166	Ioglunide	\N	{}
2167	Iodine (124I) girentuximab	\N	{}
2168	Iodine (131I) derlotuximab biotin	\N	{}
2169	Iodamide	\N	{}
2170	Iodetryl	\N	{}
2171	Iodecimol	\N	{}
2172	Iodixanol	\N	{}
2173	Iodoxamic acid	\N	{}
2174	Iodothiouracil	\N	{}
2175	Iodofiltic acid (123I)	\N	{}
2176	Iodophthalein sodium	\N	{}
2177	Iodocholesterol (131I)	\N	{}
2178	Iodocetylic acid (123I)	\N	{}
2179	Iosarcol	\N	{}
2180	Iosefamic acid	\N	{}
2181	Iosimide	\N	{}
2182	Iozomic acid	\N	{}
2183	Iocanlidic acid (123I)	\N	{}
2184	Iocarmic acid	\N	{}
2185	Ioxabrolic acid	\N	{}
2186	Ioxaglic acid	\N	{}
2187	Ioxilan	\N	{}
2188	Ioxitalamic acid	\N	{}
2189	Ioxotrizoic acid	\N	{}
2190	Iolidonic acid	\N	{}
2191	Iolixanic acid	\N	{}
2192	Iolopride (123I)	\N	{}
2193	Iomazenil (123I)	\N	{}
2194	Iomeglamic acid	\N	{}
2195	Iomeprol	\N	{}
2196	Iometin (125I)	\N	{}
2197	Iometin (131I)	\N	{}
2198	Iometopane (123I)	\N	{}
2199	Iomorinic acid	\N	{}
2200	Iopamidol	\N	{}
2201	Iopanoic acid	\N	{}
2202	Iopentol	\N	{}
2203	Iopydol	\N	{}
2204	Iopydone	\N	{}
2205	Iopromide	\N	{}
2206	Iopronic acid	\N	{}
2207	Ioprocemic acid	\N	{}
2208	Ioseric acid	\N	{}
2209	Iosimenol	\N	{}
2210	Iosulamide	\N	{}
2211	Iosumetic acid	\N	{}
2212	Iotalamic acid	\N	{}
2213	Iotasul	\N	{}
2214	Iotetric acid	\N	{}
2215	Iotranic acid	\N	{}
2216	Iotriside	\N	{}
2217	Iotrizoic acid	\N	{}
2218	Iotroxic acid	\N	{}
2219	Iotrolan	\N	{}
2220	Iofendylate	\N	{}
2221	Iophenoic acid	\N	{}
2222	Iofetamine (123I)	\N	{}
2223	Ioflubenzamide (131I)	\N	{}
2224	Ioflupane (123I)	\N	{}
2225	Iofolastat (123I)	\N	{}
2226	Ioforminol	\N	{}
2227	Iofratol	\N	{}
2228	Yohimbic acid	\N	{}
2229	Iocetamic acid	\N	{}
2230	Ipazilide	\N	{}
2231	Ipamorelin	\N	{}
2232	Ipatasertib	\N	{}
2233	Ipafricept	\N	{}
2234	Ipexidine	\N	{}
2235	Ipenoxazone	\N	{}
2236	Ipidacrine	\N	{}
2237	Ipilimumab	\N	{}
2238	Ipravacaine	\N	{}
2239	Ipragliflozin	\N	{}
2240	Ipragratine	\N	{}
2241	Iprazochrome	\N	{}
2242	Ipramidil	\N	{}
2243	Ipratropium bromide	\N	{}
2244	Iprindole	\N	{}
2245	Ipriflavone	\N	{}
2246	Iproheptine	\N	{}
2247	Iprozilamine	\N	{}
2248	Iproclozide	\N	{}
2249	Iprocrolol	\N	{}
2250	Iproxamine	\N	{}
2251	Iproniazid	\N	{}
2252	Ipronidazole	\N	{}
2253	Iproplatin	\N	{}
2254	Iprotiazem	\N	{}
2255	Ipsalazide	\N	{}
2256	Ipsapirone	\N	{}
2257	Iralukast	\N	{}
2258	Irampanel	\N	{}
2259	Iratumumab	\N	{}
2260	Irdabisant	\N	{}
2261	Irindalone	\N	{}
2262	Irinotecan	\N	{}
2263	Irloxacin	\N	{}
2264	Iroxanadine	\N	{}
2265	Irolapride	\N	{}
2266	Iroplact	\N	{}
2267	Irosustat	\N	{}
2268	Irofulven	\N	{}
2269	Irsogladine	\N	{}
2270	Irtemazole	\N	{}
2271	Isalmadol	\N	{}
2272	Isamoltan	\N	{}
2273	Isatuximab	\N	{}
2274	Ismomultin alfa	\N	{}
2275	Ispinesib	\N	{}
2276	Ispronicline	\N	{}
2277	Israpafant	\N	{}
2278	Istaroxime	\N	{}
2279	Istradefylline	\N	{}
2280	Isunakinra	\N	{}
2281	Itazigrel	\N	{}
2282	Itameline	\N	{}
2283	Itanoxone	\N	{}
2284	Itarnafloxin	\N	{}
2285	Itasetron	\N	{}
2286	Itacitinib	\N	{}
2287	Itolizumab	\N	{}
2288	Itopride	\N	{}
2289	Itraconazole	\N	{}
2290	Itramin tosilate	\N	{}
2291	Itriglumide	\N	{}
2292	Itrocainide	\N	{}
2293	Itrocinonide	\N	{}
2294	Yttrium (90Y) clivatuzumab tetraxetan	\N	{}
2295	Yttrium (90Y) tacatuzumab tetraxetan	\N	{}
2296	Iturelix	\N	{}
2297	Ifabotuzumab	\N	{}
2298	Ifenprodil	\N	{}
2299	Iferanserin	\N	{}
2300	Ifetroban	\N	{}
2301	Ifoxetine	\N	{}
2302	Ifosfamide	\N	{}
2303	Iquindamine	\N	{}
2304	Cabazitaxel	\N	{}
2305	Cabastine	\N	{}
2306	Cabergoline	\N	{}
2307	Cabiotraxetan	\N	{}
2308	Cabiralizumab	\N	{}
2309	Cabozantinib	\N	{}
2310	Cabotegravir	\N	{}
2311	Cadazolid	\N	{}
2312	Cadexomer	\N	{}
2313	Cadralazine	\N	{}
2314	Cadrofloxacin	\N	{}
2315	Casokefamide	\N	{}
2316	Kainic acid	\N	{}
2317	Cactinomycin	\N	{}
2318	Calaspargase pegol	\N	{}
2319	Kalafungin	\N	{}
2320	Caldaret	\N	{}
2321	Potassium glucaldrate	\N	{}
2322	Potassium canrenoate	\N	{}
2323	Potassium nitrazepate	\N	{}
2324	Oxprenoate potassium	\N	{}
2325	Kallidinogenase	\N	{}
2326	Caloxetic acid	\N	{}
2327	Calusterone	\N	{}
2328	Caldiamide	\N	{}
2329	Calcobutrol	\N	{}
2330	Calteridol	\N	{}
2331	Calcipotriol	\N	{}
2332	Calcitonin	\N	{}
2333	Calcitriol	\N	{}
2334	Calcifediol	\N	{}
2335	Calcium benzamidosalicylate	\N	{}
2336	Calcium glubionate	\N	{}
2337	Calcium glucoheptonate	\N	{}
2338	Calcium dobesilate	\N	{}
2339	Calcium carbimide	\N	{}
2340	Calcium clofibrate	\N	{}
2341	Calcium levofolinate	\N	{}
2342	Calcium sodium ferriclate	\N	{}
2343	Calcium pantothenate	\N	{}
2344	Calcium saccharate	\N	{}
2345	Calcium trisodium pentetate	\N	{}
2346	Calcium folinate	\N	{}
2347	Camazepam	\N	{}
2348	Cambendazole	\N	{}
2349	Camiverine	\N	{}
2350	Camiglibose	\N	{}
2351	Camylofin	\N	{}
2352	Camicinal	\N	{}
2353	Camobucol	\N	{}
2354	Camonagrel	\N	{}
2355	Camostat	\N	{}
2356	Camrelizumab	\N	{}
2357	Camsilate	\N	{}
2358	Camphotamide	\N	{}
2359	Canagliflozin	\N	{}
2360	Canakinumab	\N	{}
2361	Kanamycin	\N	{}
2362	Canbisol	\N	{}
2363	Cangrelor	\N	{}
2364	Candicidin	\N	{}
2365	Candoxatril	\N	{}
2366	Candoxatrilat	\N	{}
2367	Candocuronium iodide	\N	{}
2368	Canertinib	\N	{}
2369	Cannabidiol	\N	{}
2370	Cannabinol	\N	{}
2371	Canoctakin	\N	{}
2372	Canosimibe	\N	{}
2373	Canrenoic acid	\N	{}
2374	Canrenone	\N	{}
2375	Cantuzumab mertansine	\N	{}
2376	Cantuzumab ravtansine	\N	{}
2377	Canfosfamide	\N	{}
2378	Capadenoson	\N	{}
2379	Capeserod	\N	{}
2380	Capecitabine	\N	{}
2381	Caplacizumab	\N	{}
2382	Capmatinib	\N	{}
2383	Capobenic acid	\N	{}
2384	Capravirine	\N	{}
2385	Capreomycin	\N	{}
2386	Caproxamine	\N	{}
2387	Capromab	\N	{}
2388	Capromorelin	\N	{}
2389	Capsaicin	\N	{}
2390	Captamine	\N	{}
2391	Captodiame	\N	{}
2392	Capuride	\N	{}
2393	Carabersat	\N	{}
2394	Carazolol	\N	{}
2395	Caramiphen	\N	{}
2396	Carafiban	\N	{}
2397	Caracemide	\N	{}
2398	Carbadox	\N	{}
2399	Carbazeran	\N	{}
2400	Carbazochrome	\N	{}
2401	Carbazochrome salicylate	\N	{}
2402	Carbazocine	\N	{}
2403	Carbaldrate	\N	{}
2404	Carbamazepine	\N	{}
2405	Carbantel	\N	{}
2406	Carbaril	\N	{}
2407	Carbarsone	\N	{}
2408	Carbasalate calcium	\N	{}
2409	Carbachol	\N	{}
2410	Carbesilate	\N	{}
2411	Carbenzide	\N	{}
2412	Carbenicillin	\N	{}
2413	Carbenoxolone	\N	{}
2414	Carbetimer	\N	{}
2415	Carbetocin	\N	{}
2416	Carbidopa	\N	{}
2417	Carbimazole	\N	{}
2418	Carbinoxamine	\N	{}
2419	Carbifene	\N	{}
2420	Carbocloral	\N	{}
2421	Carbocromen	\N	{}
2422	Carbomer	\N	{}
2423	Carbomycin	\N	{}
2424	Carboplatin	\N	{}
2425	Carboprost	\N	{}
2426	Carbofenotion	\N	{}
2427	Carboquone	\N	{}
2428	Carbocisteine	\N	{}
2429	Carbromal	\N	{}
2430	Carbubarb	\N	{}
2431	Carburazepam	\N	{}
2432	Carbutamide	\N	{}
2433	Carbuterol	\N	{}
2434	Carvotroline	\N	{}
2435	Carglumic acid	\N	{}
2436	Cargutocin	\N	{}
2437	Carebastine	\N	{}
2438	Carzelesin	\N	{}
2439	Carzenide	\N	{}
2440	Carisoprodol	\N	{}
2441	Caricotamide	\N	{}
2442	Carindacillin	\N	{}
2443	Cariporide	\N	{}
2444	Cariprazine	\N	{}
2445	Carisbamate	\N	{}
2446	Carcainium chloride	\N	{}
2447	Carlumab	\N	{}
2448	Carmantadine	\N	{}
2449	Carmegliptin	\N	{}
2450	Carmellose	\N	{}
2451	Carmetizide	\N	{}
2452	Carmoxirole	\N	{}
2453	Carmoterol	\N	{}
2454	Carmofur	\N	{}
2455	Carmustine	\N	{}
2456	Carnidazole	\N	{}
2457	Carnitine	\N	{}
2458	Caroverine	\N	{}
2459	Carocainide	\N	{}
2460	Caroxazone	\N	{}
2461	Carotegrast	\N	{}
2462	Carotuximab	\N	{}
2463	Carperidine	\N	{}
2464	Carperitide	\N	{}
2465	Carperone	\N	{}
2466	Carpindolol	\N	{}
2467	Carpipramine	\N	{}
2468	Carprazidil	\N	{}
2469	Carpronium chloride	\N	{}
2470	Carprofen	\N	{}
2471	Carsalam	\N	{}
2472	Carsatrin	\N	{}
2473	Cartazolate	\N	{}
2474	Cartasteine	\N	{}
2475	Carteolol	\N	{}
2476	Carubicin	\N	{}
2477	Carumonam	\N	{}
2478	Carfenazine	\N	{}
2479	Carfentanil	\N	{}
2480	Carfecillin	\N	{}
2481	Carfilzomib	\N	{}
2482	Carfimate	\N	{}
2483	Casimersen	\N	{}
2484	Casopitant	\N	{}
2485	Caspofungin	\N	{}
2486	Cathine	\N	{}
2487	Cathinone	\N	{}
2488	Catramilast	\N	{}
2489	Catridecacog	\N	{}
2490	Catumaxomab	\N	{}
2491	Cafaminol	\N	{}
2492	Cafedrine	\N	{}
2493	Quadazocine	\N	{}
2494	Quadrosilan	\N	{}
2495	Quazepam	\N	{}
2496	Quazinone	\N	{}
2497	Quazodine	\N	{}
2498	Quazolast	\N	{}
2499	Quatacaine	\N	{}
2500	Quetiapine	\N	{}
2501	Quilizumab	\N	{}
2502	Kebuzone	\N	{}
2503	Keliximab	\N	{}
2504	Khellin	\N	{}
2505	Khelloside	\N	{}
2506	Keracyanin	\N	{}
2507	Ketazolam	\N	{}
2508	Ketazocine	\N	{}
2509	Ketamine	\N	{}
2510	Ketanserin	\N	{}
2511	Ketimipramine	\N	{}
2512	Ketobemidone	\N	{}
2513	Ketocaine	\N	{}
2514	Ketocainol	\N	{}
2515	Ketoconazole	\N	{}
2516	Ketoxal	\N	{}
2517	Ketoprofen	\N	{}
2518	Ketorolac	\N	{}
2519	Ketorfanol	\N	{}
2520	Ketotifen	\N	{}
2521	Ketotrexate	\N	{}
2522	Kitasamycin	\N	{}
2523	Clavulanic acid	\N	{}
2524	Cladribine	\N	{}
2525	Clazakizumab	\N	{}
2526	Clazosentan	\N	{}
2527	Clazolam	\N	{}
2528	Clazolimine	\N	{}
2529	Clazuril	\N	{}
2530	Clamidoxic acid	\N	{}
2531	Clamikalant	\N	{}
2532	Clamoxyquine	\N	{}
2533	Clanobutin	\N	{}
2534	Clantifen	\N	{}
2535	Clanfenur	\N	{}
2536	Clarithromycin	\N	{}
2537	Clebopride	\N	{}
2538	Clevidipine	\N	{}
2539	Clevudine	\N	{}
2540	Clemastine	\N	{}
2541	Clemeprol	\N	{}
2542	Clemizole	\N	{}
2543	Clemizole penicillin	\N	{}
2544	Clenbuterol	\N	{}
2545	Clenoliximab	\N	{}
2546	Clenpirin	\N	{}
2547	Clentiazem	\N	{}
2548	Cletoquine	\N	{}
2549	Clefamide	\N	{}
2550	Clibucaine	\N	{}
2551	Clivatuzumab tetraxetan	\N	{}
2552	Clidanac	\N	{}
2553	Clidafidine	\N	{}
2554	Clidinium bromide	\N	{}
2555	Climazolam	\N	{}
2556	Climbazole	\N	{}
2557	Climiqualine	\N	{}
2558	Clinafloxacin	\N	{}
2559	Clindamycin	\N	{}
2560	Clinolamide	\N	{}
2561	Clinofibrate	\N	{}
2562	Clinprost	\N	{}
2563	Clioxanide	\N	{}
2564	Clioquinol	\N	{}
2565	Cliprofen	\N	{}
2566	Cliropamine	\N	{}
2567	Clobazam	\N	{}
2568	Clobenzepam	\N	{}
2569	Clobenzorex	\N	{}
2570	Clobenztropine	\N	{}
2571	Clobenoside	\N	{}
2572	Clobetasol	\N	{}
2573	Clobetasone	\N	{}
2574	Clobuzarit	\N	{}
2575	Clobutinol	\N	{}
2576	Clovoxamine	\N	{}
2577	Clogestone	\N	{}
2578	Cloguanamil	\N	{}
2579	Clodazon	\N	{}
2580	Clodacaine	\N	{}
2581	Clodanolene	\N	{}
2582	Clodantoin	\N	{}
2583	Clodoxopone	\N	{}
2584	Clodronic acid	\N	{}
2585	Closantel	\N	{}
2586	Clozapine	\N	{}
2587	Closilate	\N	{}
2588	Closiramine	\N	{}
2589	Clocanfamide	\N	{}
2590	Clocapramine	\N	{}
2591	Clocortolone	\N	{}
2592	Cloxazolam	\N	{}
2593	Cloxacepride	\N	{}
2594	Cloxacillin	\N	{}
2595	Cloximate	\N	{}
2596	Cloxypendyl	\N	{}
2597	Cloxiquine	\N	{}
2598	Cloxotestosterone	\N	{}
2599	Cloxestradiol	\N	{}
2600	Clocoumarol	\N	{}
2601	Clomacran	\N	{}
2602	Clomegestone	\N	{}
2603	Clometacin	\N	{}
2604	Clometerone	\N	{}
2605	Clomethiazole	\N	{}
2606	Clometocillin	\N	{}
2607	Clominorex	\N	{}
2608	Clomipramine	\N	{}
2609	Clomifene	\N	{}
2610	Clomifenoxide	\N	{}
2611	Clomoxir	\N	{}
2612	Clomocycline	\N	{}
2613	Clonazepam	\N	{}
2614	Clonazoline	\N	{}
2615	Clonixeril	\N	{}
2616	Clonixin	\N	{}
2617	Clonitazene	\N	{}
2618	Clonitrate	\N	{}
2619	Clopamide	\N	{}
2620	Clopenthixol	\N	{}
2621	Cloperastine	\N	{}
2622	Cloperidone	\N	{}
2623	Clopidogrel	\N	{}
2624	Clopidol	\N	{}
2625	Clopimozide	\N	{}
2626	Clopipazan	\N	{}
2627	Clopirac	\N	{}
2628	Cloponone	\N	{}
2629	Cloprednol	\N	{}
2630	Cloprostenol	\N	{}
2631	Cloprothiazole	\N	{}
2632	Cloranolol	\N	{}
2633	Clorgiline	\N	{}
2634	Clorexolone	\N	{}
2635	Cloretate	\N	{}
2636	Cloridarol	\N	{}
2637	Cloricromen	\N	{}
2638	Clorindanic acid	\N	{}
2639	Clorindanol	\N	{}
2640	Clorindione	\N	{}
2641	Clormecaine	\N	{}
2642	Cloroperone	\N	{}
2643	Clorotepine	\N	{}
2644	Clorofene	\N	{}
2645	Clorprenaline	\N	{}
2646	Clorsulon	\N	{}
2647	Clortermine	\N	{}
2648	Clostebol	\N	{}
2649	Clotiazepam	\N	{}
2650	Clotiapine	\N	{}
2651	Cloticasone	\N	{}
2652	Clotixamide	\N	{}
2653	Clotioxone	\N	{}
2654	Clotrimazole	\N	{}
2655	Clofazimine	\N	{}
2656	Clofarabine	\N	{}
2657	Clofeverine	\N	{}
2658	Clofedanol	\N	{}
2659	Clofezone	\N	{}
2660	Clofexamide	\N	{}
2661	Clofenamide	\N	{}
2662	Clofenamic acid	\N	{}
2663	Clofenvinfos	\N	{}
2664	Clofenetamine	\N	{}
2665	Clofenoxyde	\N	{}
2666	Clofenotane	\N	{}
2667	Clofenciclan	\N	{}
2668	Clofibrate	\N	{}
2669	Clofibride	\N	{}
2670	Clofibric acid	\N	{}
2671	Clofilium phosphate	\N	{}
2672	Clofluperol	\N	{}
2673	Clofoctol	\N	{}
2674	Cloforex	\N	{}
2675	Clofurac	\N	{}
2676	Cloquinate	\N	{}
2677	Cloquinozine	\N	{}
2678	Clociguanil	\N	{}
2679	Clocinizine	\N	{}
2680	Cobamamide	\N	{}
2681	Cobimetinib	\N	{}
2682	Cobiprostone	\N	{}
2683	Cobitolimod	\N	{}
2684	Cobicistat	\N	{}
2685	Cogazocine	\N	{}
2686	Codactide	\N	{}
2687	Codoxime	\N	{}
2688	Codrituzumab	\N	{}
2689	Cositecan	\N	{}
2690	Cocarboxylase	\N	{}
2691	Colesevelam	\N	{}
2692	Colecalciferol	\N	{}
2693	Colextran	\N	{}
2694	Coleneuramide	\N	{}
2695	Colestilan	\N	{}
2696	Colestipol	\N	{}
2697	Colestyramine	\N	{}
2698	Colestolone	\N	{}
2699	Colimecycline	\N	{}
2700	Colistimethate sodium	\N	{}
2701	Colistin	\N	{}
2702	Colterol	\N	{}
2703	Coltuximab ravtansine	\N	{}
2704	Coluracetam	\N	{}
2705	Colfenamate	\N	{}
2706	Colforsin	\N	{}
2707	Colfosceril palmitate	\N	{}
2708	Conatumumab	\N	{}
2709	Conbercept	\N	{}
2710	Condoliase	\N	{}
2711	Conessine	\N	{}
2712	Conestat alfa	\N	{}
2713	Conivaptan	\N	{}
2714	Conorfone	\N	{}
2715	Contusugene ladenovec	\N	{}
2716	Concizumab	\N	{}
2717	Copanlisib	\N	{}
2718	Corbadrine	\N	{}
2719	Corifollitropin alfa	\N	{}
2720	Cormetasone	\N	{}
2721	Cortivazol	\N	{}
2722	Cortisone	\N	{}
2723	Corticorelin	\N	{}
2724	Corticotropin	\N	{}
2725	Corticotropin zinc hydroxide	\N	{}
2726	Cortisuzol	\N	{}
2727	Cortodoxone	\N	{}
2728	Cotinine	\N	{}
2729	Cotriptyline	\N	{}
2730	Cofisatin	\N	{}
2731	Creatinolfosfate	\N	{}
2732	Cresotamide	\N	{}
2733	Crenezumab	\N	{}
2734	Crenolanib	\N	{}
2735	Cridanimod	\N	{}
2736	Crizanlizumab	\N	{}
2737	Crizotinib	\N	{}
2738	Crilanomer	\N	{}
2739	Crilvastatin	\N	{}
2740	Cryofluorane	\N	{}
2741	Crisaborole	\N	{}
2742	Crisantaspase	\N	{}
2743	Crisnatol	\N	{}
2744	Crobenetine	\N	{}
2745	Crobefate	\N	{}
2746	Croconazole	\N	{}
2747	Crolibulin	\N	{}
2748	Cromakalim	\N	{}
2749	Cromacate	\N	{}
2750	Cromesilate	\N	{}
2751	Cromitrile	\N	{}
2752	Cromoglicate lisetil	\N	{}
2753	Cromoglicic acid	\N	{}
2754	Cronidipine	\N	{}
2755	Cropropamide	\N	{}
2756	Croscarmellose	\N	{}
2757	Crospovidone	\N	{}
2758	Crotamiton	\N	{}
2759	Crotedumab	\N	{}
2760	Crotetamide	\N	{}
2761	Crotoniazide	\N	{}
2762	Crufomate	\N	{}
2763	Xaliproden	\N	{}
2764	Xamoterol	\N	{}
2765	Xanoxic acid	\N	{}
2766	Xanomeline	\N	{}
2767	Xantinol nicotinate	\N	{}
2768	Xanthiol	\N	{}
2769	Xantifibrate	\N	{}
2770	Xantofyl palmitate	\N	{}
2771	Xantocillin	\N	{}
2772	Xemilofiban	\N	{}
2773	Xenazoic acid	\N	{}
2774	Xenalipin	\N	{}
2775	Xenbucin	\N	{}
2776	Xenyhexenic acid	\N	{}
2777	Xenygloxal	\N	{}
2778	Xenipentone	\N	{}
2779	Xenysalate	\N	{}
2780	Xenytropium bromide	\N	{}
2781	Xenon (133Xe)	\N	{}
2782	Xenthiorate	\N	{}
2783	Xentuzumab	\N	{}
2784	Xibenolol	\N	{}
2785	Xibornol	\N	{}
2786	Xidecaflur	\N	{}
2787	Xylazine	\N	{}
2788	Xylamidine tosilate	\N	{}
2789	Xilobam	\N	{}
2790	Xyloxemine	\N	{}
2791	Xylocoumarol	\N	{}
2792	Xylometazoline	\N	{}
2793	Ximelagatran	\N	{}
2794	Ximoprofen	\N	{}
2795	Xinafoate	\N	{}
2796	Xinidamine	\N	{}
2797	Xinomiline	\N	{}
2798	Xipamide	\N	{}
2799	Xipranolol	\N	{}
2800	Xorphanol	\N	{}
2801	Coumazoline	\N	{}
2802	Coumamycin	\N	{}
2803	Coumafos	\N	{}
2804	Coumetarol	\N	{}
2805	Cupabimod	\N	{}
2806	Cuprimyxin	\N	{}
2807	Cuproxoline	\N	{}
2808	Custirsen	\N	{}
2809	Cutamesine	\N	{}
2810	Labetuzumab	\N	{}
2811	Labetuzumab govitecan	\N	{}
2812	Labradimil	\N	{}
2813	Lavamilast	\N	{}
2814	Lavoltidine	\N	{}
2815	Lagatide	\N	{}
2816	Lagociclovir	\N	{}
2817	Ladarixin	\N	{}
2818	Ladirubicin	\N	{}
2819	Ladostigil	\N	{}
2820	Lazabemide	\N	{}
2821	Lasalocid	\N	{}
2822	Lasofoxifene	\N	{}
2823	Laidlomycin	\N	{}
2824	Lacosamide	\N	{}
2825	Lactalfate	\N	{}
2826	Lactitol	\N	{}
2827	Lactulose	\N	{}
2828	Lamivudine	\N	{}
2829	Lamifiban	\N	{}
2830	Lamotrigine	\N	{}
2831	Lampalizumab	\N	{}
2832	Lamtidine	\N	{}
2833	Lanadelumab	\N	{}
2834	Lanatoside C	\N	{}
2835	Landiolol	\N	{}
2836	Landogrozumab	\N	{}
2837	Lanepitant	\N	{}
2838	Lanimostim	\N	{}
2839	Laninamivir	\N	{}
2840	Laniquidar	\N	{}
2841	Lanicemine	\N	{}
2842	Lancovutide	\N	{}
2843	Lanoconazole	\N	{}
2844	Lanopepden	\N	{}
2845	Lanoteplase	\N	{}
2846	Lanperisone	\N	{}
2847	Lanproston	\N	{}
2848	Lanreotide	\N	{}
2849	Lansoprazole	\N	{}
2850	Lapaquistat	\N	{}
2851	Lapatinib	\N	{}
2852	Lapirium chloride	\N	{}
2853	Lapisteride	\N	{}
2854	Laprafylline	\N	{}
2855	Laprituximab	\N	{}
2856	Laprituximab emtansine	\N	{}
2857	Larazotide	\N	{}
2858	Laromustine	\N	{}
2859	Laronidase	\N	{}
2860	Laropiprant	\N	{}
2861	Larotaxel	\N	{}
2862	Larotrectinib	\N	{}
2863	Lasinavir	\N	{}
2864	Lascufloxacin	\N	{}
2865	Lasmiditan	\N	{}
2866	Latamoxef	\N	{}
2867	Latanoprost	\N	{}
2868	Latanoprostene bunod	\N	{}
2869	Latidectin	\N	{}
2870	Latrepirdine	\N	{}
2871	Latromotide	\N	{}
2872	Laudexium metilsulfate	\N	{}
2873	Lauralkonium chloride	\N	{}
2874	Laurixamine	\N	{}
2875	Lauril	\N	{}
2876	Laurilsulfate	\N	{}
2877	Lauroguadine	\N	{}
2878	Laurocapram	\N	{}
2879	Laurolinium acetate	\N	{}
2880	Lauromacrogol 400	\N	{}
2881	Laurcetium bromide	\N	{}
2882	Laflunimus	\N	{}
2883	Lafutidine	\N	{}
2884	Laquinimod	\N	{}
2885	Lacidipine	\N	{}
2886	Lebrikizumab	\N	{}
2887	Levallorphan	\N	{}
2888	Levamisole	\N	{}
2889	Levamlodipine	\N	{}
2890	Levamfetamine	\N	{}
2891	Levacetylmethadol	\N	{}
2892	Levdobutamine	\N	{}
2893	Levemopamil	\N	{}
2894	Levetiracetam	\N	{}
2895	Levisoprenaline	\N	{}
2896	Levcromakalim	\N	{}
2897	Levlofexidine	\N	{}
2898	Levmetamfetamine	\N	{}
2899	Levobetaxolol	\N	{}
2900	Levobunolol	\N	{}
2901	Levobupivacaine	\N	{}
2902	Levoglucose	\N	{}
2903	Levodopa	\N	{}
2904	Levodropropizine	\N	{}
2905	Levocabastine	\N	{}
2906	Levocarnitine	\N	{}
2907	Levoketoconazole	\N	{}
2908	Levoxadrol	\N	{}
2909	Levolansoprazole	\N	{}
2910	Levomenol	\N	{}
2911	Levomenthol	\N	{}
2912	Levomepromazine	\N	{}
2913	Levomethadone	\N	{}
2914	Levometiomeprazine	\N	{}
2915	Levomethorphan	\N	{}
2916	Levomefolic acid	\N	{}
2917	Levomequitazine	\N	{}
2918	Levomilnacipran	\N	{}
2919	Levomoprolol	\N	{}
2920	Levomoramide	\N	{}
2921	Levonadifloxacin	\N	{}
2922	Levonantradol	\N	{}
2923	Levonebivolol	\N	{}
2924	Levonorgestrel	\N	{}
2925	Levopropylhexedrine	\N	{}
2926	Levopropicillin	\N	{}
2927	Levopropoxyphene	\N	{}
2928	Levoprotiline	\N	{}
2929	Levorin	\N	{}
2930	Levormeloxifene	\N	{}
2931	Levorphanol	\N	{}
2932	Levosalbutamol	\N	{}
2933	Levosemotiadil	\N	{}
2934	Levosimendan	\N	{}
2935	Levosulpiride	\N	{}
2936	Levothyroxine sodium	\N	{}
2937	Levotofisopam	\N	{}
2938	Levofacetoperane	\N	{}
2939	Levophenacylmorphan	\N	{}
2940	Levofenfluramine	\N	{}
2941	Levofloxacin	\N	{}
2942	Levofuraltadone	\N	{}
2943	Levocetirizine	\N	{}
2944	Levcycloserine	\N	{}
2945	Ledazerol	\N	{}
2946	Ledipasvir	\N	{}
2947	Ledismase	\N	{}
2948	Ledoxantrone	\N	{}
2949	Lesogaberan	\N	{}
2950	Lesopitron	\N	{}
2951	Leucocianidol	\N	{}
2952	Leiopyrrole	\N	{}
2953	Leuprorelin	\N	{}
2954	Leurubicin	\N	{}
2955	Leuciglumer	\N	{}
2956	Leucine	\N	{}
2957	Leucinocaine	\N	{}
2958	Lecozotan	\N	{}
2959	Leconotide	\N	{}
2960	Lexacalcitol	\N	{}
2961	Lexanopadol	\N	{}
2962	Lexaptepid pegol	\N	{}
2963	Lexatumumab	\N	{}
2964	Lexibulin	\N	{}
2965	Lexipafant	\N	{}
2966	Lexithromycin	\N	{}
2967	Lexofenac	\N	{}
2968	Lemalesomab	\N	{}
2969	Lemborexant	\N	{}
2970	Lemidosul	\N	{}
2971	Lemildipine	\N	{}
2972	Leminoprazole	\N	{}
2973	Lemoxinol	\N	{}
2974	Lemuteporfin	\N	{}
2975	Lenadogene nolparvovec	\N	{}
2976	Lenalidomide	\N	{}
2977	Lenampicillin	\N	{}
2978	Lenapenem	\N	{}
2979	Lenvatinib	\N	{}
2980	Olendalizumab	\N	{}
2981	Lenercept	\N	{}
2982	Lenzilumab	\N	{}
2983	Leniolisib	\N	{}
2984	Leniquinsin	\N	{}
2985	Lenograstim	\N	{}
2986	Lenomorelin	\N	{}
2987	Lenperone	\N	{}
2988	Lensiprazine	\N	{}
2989	Lepirudin	\N	{}
2990	Leptacline	\N	{}
2991	Lergotrile	\N	{}
2992	Lerdelimumab	\N	{}
2993	Leridistim	\N	{}
2994	Lerimazoline	\N	{}
2995	Lerisetron	\N	{}
2996	Lercanidipine	\N	{}
2997	Lersivirine	\N	{}
2998	Lesinurad	\N	{}
2999	Lestaurtinib	\N	{}
3000	Letaxaban	\N	{}
3001	Leteprinim	\N	{}
3002	Letermovir	\N	{}
3003	Letimide	\N	{}
3004	Letosteine	\N	{}
3005	Letrazuril	\N	{}
3006	Letrozole	\N	{}
3007	Lefamulin	\N	{}
3008	Lefetamine	\N	{}
3009	Lefitolimod	\N	{}
3010	Leflunomide	\N	{}
3011	Lefradafiban	\N	{}
3012	Lecimibide	\N	{}
3013	Liarozole	\N	{}
3014	Liatermin	\N	{}
3015	Liafensine	\N	{}
3016	Libenzapril	\N	{}
3017	Libecillide	\N	{}
3018	Libivirumab	\N	{}
3019	Livaraparin calcium	\N	{}
3020	Lividomycin	\N	{}
3021	Ligelizumab	\N	{}
3022	Lidadronic acid	\N	{}
3023	Lidamidine	\N	{}
3024	Lidanserin	\N	{}
3025	Lidimycin	\N	{}
3026	Lidocaine	\N	{}
3027	Lidorestat	\N	{}
3028	Lidofenin	\N	{}
3029	Lidoflazine	\N	{}
3030	Lisadimate	\N	{}
3031	Lisdexamfetamine	\N	{}
3032	Lysergide	\N	{}
3033	Lysine	\N	{}
3034	Lisofylline	\N	{}
3035	Lisuride	\N	{}
3036	Licarbazepine	\N	{}
3037	Licostinel	\N	{}
3038	Licofelone	\N	{}
3039	Lixazinone	\N	{}
3040	Lixivaptan	\N	{}
3041	Lixisenatide	\N	{}
3042	Lilopristone	\N	{}
3043	Lilotomab	\N	{}
3044	Limazocic	\N	{}
3045	Limaprost	\N	{}
3046	Lymecycline	\N	{}
3047	Limiglidole	\N	{}
3048	Linagliptin	\N	{}
3049	Linaclotide	\N	{}
3050	Linaprazan	\N	{}
3051	Linarotene	\N	{}
3052	Lindane	\N	{}
3053	Linezolid	\N	{}
3054	Linetastine	\N	{}
3055	Linifanib	\N	{}
3056	Lincomycin	\N	{}
3057	Linogliride	\N	{}
3058	Linopirdine	\N	{}
3059	Linopristin	\N	{}
3060	Linotroban	\N	{}
3061	Linsidomine	\N	{}
3062	Linsitinib	\N	{}
3063	Lintitript	\N	{}
3064	Lintopride	\N	{}
3065	Lintuzumab	\N	{}
3066	Lynestrenol	\N	{}
3067	Liothyronine	\N	{}
3068	Lypressin	\N	{}
3069	Lipegfilgrastim	\N	{}
3070	Liraglutide	\N	{}
3071	Liranaftate	\N	{}
3072	Lirexapride	\N	{}
3073	Lirequinil	\N	{}
3074	Lirilumab	\N	{}
3075	Lirimilast	\N	{}
3076	Liroldine	\N	{}
3077	Lisavanbulin	\N	{}
3078	Litenimod	\N	{}
3079	Litoxetine	\N	{}
3080	Litomeglovir	\N	{}
3081	Litracen	\N	{}
3082	Litronesib	\N	{}
3083	Lifarizine	\N	{}
3084	Lifastuzumab vedotin	\N	{}
3085	Lifibrate	\N	{}
3086	Lifibrol	\N	{}
3087	Lifitegrast	\N	{}
3088	Lificiguat	\N	{}
3089	Lobaplatin	\N	{}
3090	Lobeglitazone	\N	{}
3091	Lobeline	\N	{}
3092	Lobendazole	\N	{}
3093	Lobenzarit	\N	{}
3094	Lobucavir	\N	{}
3095	Lobuprofen	\N	{}
3096	Lovastatin	\N	{}
3097	Loviride	\N	{}
3098	Lodazecar	\N	{}
3099	Lodaxaprine	\N	{}
3100	Lodelaben	\N	{}
3101	Lodelcizumab	\N	{}
3102	Lodenafil carbonate	\N	{}
3103	Lodenosine	\N	{}
3104	Lodinixil	\N	{}
3105	Lodiperone	\N	{}
3106	Lodoxamide	\N	{}
3107	Losigamone	\N	{}
3108	Lozilurea	\N	{}
3109	Losindole	\N	{}
3110	Losmiprofen	\N	{}
3111	Losoxantrone	\N	{}
3112	Lokivetmab	\N	{}
3113	Loxanast	\N	{}
3114	Loxapine	\N	{}
3115	Loxiglumide	\N	{}
3116	Loxoprofen	\N	{}
3117	Loxoribine	\N	{}
3118	Lombazole	\N	{}
3119	Lomevactone	\N	{}
3120	Lomeguatrib	\N	{}
3121	Lomerizine	\N	{}
3122	Lometraline	\N	{}
3123	Lometrexol	\N	{}
3124	Lomefloxacin	\N	{}
3125	Lomibuvir	\N	{}
3126	Lomitapide	\N	{}
3127	Lomifylline	\N	{}
3128	Lomustine	\N	{}
3129	Lonazolac	\N	{}
3130	Lonapalene	\N	{}
3131	Lonaprisan	\N	{}
3132	Lonaprofen	\N	{}
3133	Lonafarnib	\N	{}
3134	Lonidamine	\N	{}
3135	Lonoctocog alfa	\N	{}
3136	Loperamide	\N	{}
3137	Loperamide oxide	\N	{}
3138	Lopinavir	\N	{}
3139	Lopirazepam	\N	{}
3140	Lopobutan	\N	{}
3141	Loprazolam	\N	{}
3142	Loprodiol	\N	{}
3143	Lorazepam	\N	{}
3144	Lorajmine	\N	{}
3145	Loracarbef	\N	{}
3146	Lorapride	\N	{}
3147	Loratadine	\N	{}
3148	Lorbamate	\N	{}
3149	Lorvotuzumab mertansine	\N	{}
3150	Lorglumide	\N	{}
3151	Lorediplon	\N	{}
3152	Loreclezole	\N	{}
3153	Lorzafone	\N	{}
3154	Lorcainide	\N	{}
3155	Lorcaserin	\N	{}
3156	Lorlatinib	\N	{}
3157	Lormetazepam	\N	{}
3158	Lornoxicam	\N	{}
3159	Lorpiprazole	\N	{}
3160	Lortalamine	\N	{}
3161	Lorcinadol	\N	{}
3162	Losmapimod	\N	{}
3163	Losulazine	\N	{}
3164	Loteprednol	\N	{}
3165	Lotilaner	\N	{}
3166	Lotilibcin	\N	{}
3167	Lotifazole	\N	{}
3168	Lotrafiban	\N	{}
3169	Lotrifen	\N	{}
3170	Lotucaine	\N	{}
3171	Lofexidine	\N	{}
3172	Lofemizole	\N	{}
3173	Lofendazam	\N	{}
3174	Lofentanil	\N	{}
3175	Lofepramine	\N	{}
3176	Loflucarban	\N	{}
3177	Locicortolone dicibate	\N	{}
3178	Lubabegron	\N	{}
3179	Lubazodone	\N	{}
3180	Lubeluzole	\N	{}
3181	Lubiprostone	\N	{}
3182	Lusaperidone	\N	{}
3183	Lucanthone	\N	{}
3184	Lucartamide	\N	{}
3185	Lucatumumab	\N	{}
3186	Luxabendazole	\N	{}
3187	Lulizumab pegol	\N	{}
3188	Luliconazole	\N	{}
3189	Lumacaftor	\N	{}
3190	Lumateperone	\N	{}
3191	Lumefantrine	\N	{}
3192	Lumiliximab	\N	{}
3193	Luminespib	\N	{}
3194	Lumiracoxib	\N	{}
3195	Lumicitabine	\N	{}
3196	Lumretuzumab	\N	{}
3197	Lunacalcipol	\N	{}
3198	Lupartumab	\N	{}
3199	Lupartumab amadotin	\N	{}
3200	Lupitidine	\N	{}
3201	Luprostiol	\N	{}
3202	Lurasidone	\N	{}
3203	Lurbinectedin	\N	{}
3204	Lurosetron	\N	{}
3205	Lurtotecan	\N	{}
3206	Luseogliflozin	\N	{}
3207	Luspatercept	\N	{}
3208	Lusupultide	\N	{}
3209	Lusutrombopag	\N	{}
3210	Lutikizumab	\N	{}
3211	Lutrelin	\N	{}
3212	Lutropin alfa	\N	{}
3213	Lufenuron	\N	{}
3214	Lufironil	\N	{}
3215	Lufuradom	\N	{}
3216	Lucerastat	\N	{}
3217	Lucitanib	\N	{}
3218	Lutetium (177Lu) lilotomab satetraxetan	\N	{}
3219	Lucimycin	\N	{}
3220	Mabuprofen	\N	{}
3221	Mabuterol	\N	{}
3222	Mavacoxib	\N	{}
3223	Mavatrep	\N	{}
3224	Mavoglurant	\N	{}
3225	Mavrilimumab	\N	{}
3226	Magaldrate	\N	{}
3227	Magnesium clofibrate	\N	{}
3228	Maduramicin	\N	{}
3229	Mazapertine	\N	{}
3230	Mazaticol	\N	{}
3231	Masilukast	\N	{}
3232	Mazindol	\N	{}
3233	Mazipredone	\N	{}
3234	Masitinib	\N	{}
3235	Mazokalim	\N	{}
3236	Masoprocol	\N	{}
3237	Maitansine	\N	{}
3238	Macrogol	\N	{}
3239	Macrogol ester	\N	{}
3240	Macrosalb (131I)	\N	{}
3241	Macrosalb (99mTc)	\N	{}
3242	Maxacalcitol	\N	{}
3243	Maleylsulfathiazole	\N	{}
3244	Maletamer	\N	{}
3245	Malotilate	\N	{}
3246	Managlinat dialanetil	\N	{}
3247	Mangafodipir	\N	{}
3248	Manidipine	\N	{}
3249	Manitimus	\N	{}
3250	Manifaxine	\N	{}
3251	Mannitol hexanitrate	\N	{}
3252	Mannomustine	\N	{}
3253	Mannosulfan	\N	{}
3254	Manozodil	\N	{}
3255	Mantabegron	\N	{}
3256	Mapatumumab	\N	{}
3257	Mapinastine	\N	{}
3258	Mapracorat	\N	{}
3259	Maprotiline	\N	{}
3260	Maraviroc	\N	{}
3261	Maralixibat chloride	\N	{}
3262	Maraciclatide	\N	{}
3263	Marbofloxacin	\N	{}
3264	Margetuximab	\N	{}
3265	Marzeptacog alfa (activated)	\N	{}
3266	Maribavir	\N	{}
3267	Maridomycin	\N	{}
3268	Marizomib	\N	{}
3269	Marimastat	\N	{}
3270	Mariptiline	\N	{}
3271	Maroxepin	\N	{}
3272	Maropitant	\N	{}
3273	Maslimomab	\N	{}
3274	Matuzumab	\N	{}
3275	Mafenide	\N	{}
3276	Mafoprazine	\N	{}
3277	Mafosfamide	\N	{}
3278	Macimorelin	\N	{}
3279	Macitentan	\N	{}
3280	Mebanazine	\N	{}
3281	Mebhydrolin	\N	{}
3282	Mebeverine	\N	{}
3283	Mebezonium iodide	\N	{}
3284	Mebendazole	\N	{}
3285	Mebenoside	\N	{}
3286	Mebiquine	\N	{}
3287	Mebolazine	\N	{}
3288	Mebrofenin	\N	{}
3289	Mebutamate	\N	{}
3290	Mebutizide	\N	{}
3291	Mevastatin	\N	{}
3292	Megallate	\N	{}
3293	Megalomicin	\N	{}
3294	Meglitinide	\N	{}
3295	Meglutol	\N	{}
3296	Meglumine	\N	{}
3297	Meglucycline	\N	{}
3298	Megestrol	\N	{}
3299	Medazepam	\N	{}
3300	Medazomide	\N	{}
3301	Medetomidine	\N	{}
3302	Medibazine	\N	{}
3303	Medifoxamine	\N	{}
3304	Medorinone	\N	{}
3305	Medorubicin	\N	{}
3306	Medrysone	\N	{}
3307	Medrylamine	\N	{}
3308	Medrogestone	\N	{}
3309	Medroxalol	\N	{}
3310	Medroxyprogesterone	\N	{}
3311	Medronic acid	\N	{}
3312	Mesabolone	\N	{}
3313	Mezacopride	\N	{}
3314	Meseclazone	\N	{}
3315	Mezepine	\N	{}
3316	Mezilamine	\N	{}
3317	Mezlocillin	\N	{}
3318	Mesocarb	\N	{}
3319	Mesoridazine	\N	{}
3320	Mecasermin	\N	{}
3321	Mecasermin rinfabate	\N	{}
3322	Mecamylamine	\N	{}
3323	Mecapegfilgrastim	\N	{}
3324	Mecarbinate	\N	{}
3325	Mequidox	\N	{}
3326	Mequinol	\N	{}
3327	Meclinertant	\N	{}
3328	Meclozine	\N	{}
3329	Mecloqualone	\N	{}
3330	Mecloxamine	\N	{}
3331	Meclonazepam	\N	{}
3332	Mecloralurea	\N	{}
3333	Meclorisone	\N	{}
3334	Meclofenamic acid	\N	{}
3335	Meclofenoxate	\N	{}
3336	Meclocycline	\N	{}
3337	Mecobalamin	\N	{}
3338	Mecrilate	\N	{}
3339	Mexazolam	\N	{}
3340	Mexafylline	\N	{}
3341	Mexenone	\N	{}
3342	Mexiletine	\N	{}
3343	Mexiprostil	\N	{}
3344	Mexoprofen	\N	{}
3345	Mexrenoate potassium	\N	{}
3346	Melagatran	\N	{}
3347	Meladrazine	\N	{}
3348	Melarsomine	\N	{}
3349	Melarsonyl potassium	\N	{}
3350	Melarsoprol	\N	{}
3351	Melevodopa	\N	{}
3352	Melengestrol	\N	{}
3353	Meletimide	\N	{}
3354	Melizame	\N	{}
3355	Melinamide	\N	{}
3356	Melitracen	\N	{}
3357	Melogliptin	\N	{}
3358	Meloxicam	\N	{}
3359	Melperone	\N	{}
3360	Meluadrine	\N	{}
3361	Melphalan	\N	{}
3362	Melphalan flufenamide	\N	{}
3363	Melquinast	\N	{}
3364	Meldonium	\N	{}
3365	Memantine	\N	{}
3366	Memotine	\N	{}
3367	Menabitan	\N	{}
3368	Menadiol sodium sulfate	\N	{}
3369	Menadione sodium bisulfite	\N	{}
3370	Menatetrenone	\N	{}
3371	Menbutone	\N	{}
3372	Menglytate	\N	{}
3373	Menitrazepam	\N	{}
3374	Menogaril	\N	{}
3375	Menoctone	\N	{}
3376	Menfegol	\N	{}
3377	Meobentine	\N	{}
3378	Mepacrine	\N	{}
3379	Mepartricin	\N	{}
3380	Mepenzolate bromide	\N	{}
3381	Mepivacaine	\N	{}
3382	Mepixanox	\N	{}
3383	Mepindolol	\N	{}
3384	Mepiprazole	\N	{}
3385	Mepyramine	\N	{}
3386	Mepiroxol	\N	{}
3387	Mepitiostane	\N	{}
3388	Mepolizumab	\N	{}
3389	Mepramidil	\N	{}
3390	Meprednisone	\N	{}
3391	Meprylcaine	\N	{}
3392	Meprobamate	\N	{}
3393	Meproscillarin	\N	{}
3394	Meprotixol	\N	{}
3395	Meptazinol	\N	{}
3396	Meradimate	\N	{}
3397	Meralein sodium	\N	{}
3398	Meralluride	\N	{}
3399	Merafloxacin	\N	{}
3400	Merbromin	\N	{}
3401	Mergocriptine	\N	{}
3402	Merestinib	\N	{}
3403	Meribendan	\N	{}
3404	Merisoprol (197Hg)	\N	{}
3405	Merimepodib	\N	{}
3406	Mericitabine	\N	{}
3407	Mercaptamine	\N	{}
3408	Mercaptomerin	\N	{}
3409	Mercaptopurine	\N	{}
3410	Mercuderamide	\N	{}
3411	Mercumatilin sodium	\N	{}
3412	Mercurobutol	\N	{}
3413	Mercurophylline	\N	{}
3414	Meropenem	\N	{}
3415	Merotocin	\N	{}
3416	Mersalyl	\N	{}
3417	Mertiatide	\N	{}
3418	Mesalazine	\N	{}
3419	Mesilate	\N	{}
3420	Mesmulogene ancovacivec	\N	{}
3421	Mesna	\N	{}
3422	Mespiperone (11C)	\N	{}
3423	Mespirenone	\N	{}
3424	Mestanolone	\N	{}
3425	Mesterolone	\N	{}
3426	Mestranol	\N	{}
3427	Mesudipine	\N	{}
3428	Mesuximide	\N	{}
3429	Mesulergine	\N	{}
3430	Mesulfamide	\N	{}
3431	Mesulfen	\N	{}
3432	Mesuprine	\N	{}
3433	Metabromsalan	\N	{}
3434	Metahexamide	\N	{}
3435	Metaglycodol	\N	{}
3436	Methadone	\N	{}
3437	Metazamide	\N	{}
3438	Metazide	\N	{}
3439	Methazolamide	\N	{}
3440	Metazocine	\N	{}
3441	Methaqualone	\N	{}
3442	Metaclazepam	\N	{}
3443	Metaxalone	\N	{}
3444	Metalkonium chloride	\N	{}
3445	Methallenestril	\N	{}
3446	Metallibure	\N	{}
3447	Metamelfalan	\N	{}
3448	Metamizole sodium	\N	{}
3449	Metampicillin	\N	{}
3450	Metamfazone	\N	{}
3451	Metamfepramone	\N	{}
3452	Metamfetamine	\N	{}
3453	Metandienone	\N	{}
3454	Methandriol	\N	{}
3455	Methaniazide	\N	{}
3456	Metanixin	\N	{}
3457	Methanthelinium bromide	\N	{}
3458	Methapyrilene	\N	{}
3459	Metapramine	\N	{}
3460	Metaraminol	\N	{}
3461	Metharbital	\N	{}
3462	Methastyridone	\N	{}
3463	Metaterol	\N	{}
3464	Methaphenilene	\N	{}
3465	Methacholine chloride	\N	{}
3466	Metacetamol	\N	{}
3467	Metacycline	\N	{}
3468	Metbufen	\N	{}
3469	Metheptazine	\N	{}
3470	Methdilazine	\N	{}
3471	Metesind	\N	{}
3472	Metelimumab	\N	{}
3473	Methenamine	\N	{}
3474	Meteneprost	\N	{}
3475	Metenolone	\N	{}
3476	Metiazinic acid	\N	{}
3477	Metiamide	\N	{}
3478	Metiapine	\N	{}
3479	Metibride	\N	{}
3480	Methysergide	\N	{}
3481	Metizoline	\N	{}
3482	Methyclothiazide	\N	{}
3483	Meticrane	\N	{}
3484	Metixene	\N	{}
3485	Methylbenactyzium bromide	\N	{}
3486	Methylbenzethonium chloride	\N	{}
3487	Methyldesorphine	\N	{}
3488	Methyldihydromorphine	\N	{}
3489	Metildigoxin	\N	{}
3490	Methylnaltrexone bromide	\N	{}
3491	Methylpentynol	\N	{}
3492	Methylprednisolone	\N	{}
3493	Methylprednisolone aceponate	\N	{}
3494	Methylprednisolone suleptanate	\N	{}
3495	Methylrosanilinium chloride	\N	{}
3496	Methylsamidorphan chloride	\N	{}
3497	Metilsulfate	\N	{}
3498	Methyltestosterone	\N	{}
3499	Methylthioninium chloride	\N	{}
3500	Methylthiouracil	\N	{}
3501	Methylphenidate	\N	{}
3502	Methylphenobarbital	\N	{}
3503	Methylchromone	\N	{}
3504	Methylcellulose	\N	{}
3505	Methylergometrine	\N	{}
3506	Metindizate	\N	{}
3507	Metynodiol	\N	{}
3508	Methiodal sodium	\N	{}
3509	Metioxate	\N	{}
3510	Methiomeprazine	\N	{}
3511	Methionine	\N	{}
3512	Metioprim	\N	{}
3513	Metipirox	\N	{}
3514	Metipranolol	\N	{}
3515	Metiprenaline	\N	{}
3516	Methyprylon	\N	{}
3517	Metyrapone	\N	{}
3518	Metyridine	\N	{}
3519	Metirosine	\N	{}
3520	Metisazone	\N	{}
3521	Metitepine	\N	{}
3522	Methitural	\N	{}
3523	Meticillin	\N	{}
3524	Metkefamide	\N	{}
3525	Methohexital	\N	{}
3526	Metogest	\N	{}
3527	Metoserpate	\N	{}
3528	Methoserpidine	\N	{}
3529	Methocarbamol	\N	{}
3530	Metoclopramide	\N	{}
3531	Methoxamine	\N	{}
3532	Metoxepin	\N	{}
3533	Methoxyphedrine	\N	{}
3534	Methoxyphenamine	\N	{}
3535	Methoxyflurane	\N	{}
3536	Metomidate	\N	{}
3537	Metopimazine	\N	{}
3538	Metopon	\N	{}
3539	Methoprene	\N	{}
3540	Methopromazine	\N	{}
3541	Metostilenol	\N	{}
3542	Methotrexate	\N	{}
3543	Metofenazate	\N	{}
3544	Metofoline	\N	{}
3545	Metochalcone	\N	{}
3546	Metoquizine	\N	{}
3547	Methocidin	\N	{}
3548	Metocinium iodide	\N	{}
3549	Metrazifone	\N	{}
3550	Metralindole	\N	{}
3551	Metrafazoline	\N	{}
3552	Metreleptin	\N	{}
3553	Metrenperone	\N	{}
3554	Metribolone	\N	{}
3555	Metrizamide	\N	{}
3556	Metrifonate	\N	{}
3557	Metrifudil	\N	{}
3558	Metronidazole	\N	{}
3559	Meturedepa	\N	{}
3560	Metformin	\N	{}
3561	Metformin glycinate	\N	{}
3562	Metembonate	\N	{}
3563	Metenkefalin	\N	{}
3564	Metergoline	\N	{}
3565	Metergotamine	\N	{}
3566	Metesculetol	\N	{}
3567	Metescufylline	\N	{}
3568	Methestrol	\N	{}
3569	Metethoheptazine	\N	{}
3570	Metetoin	\N	{}
3571	Mefeserpine	\N	{}
3572	Mefeclorazine	\N	{}
3573	Mefexamide	\N	{}
3574	Mefenamic acid	\N	{}
3575	Mephenesin	\N	{}
3576	Mefenidil	\N	{}
3577	Mefenidramium metilsulfate	\N	{}
3578	Mephenytoin	\N	{}
3579	Mephenoxalone	\N	{}
3580	Mefenorex	\N	{}
3581	Mephentermine	\N	{}
3582	Mefloquine	\N	{}
3583	Mefruside	\N	{}
3584	Mequitazine	\N	{}
3585	Mequitamium iodide	\N	{}
3586	Mecetronium etilsulfate	\N	{}
3587	Meciadanol	\N	{}
3588	Mecillinam	\N	{}
3589	Mecinarone	\N	{}
3590	Mecysteine	\N	{}
3591	Mianserin	\N	{}
3592	Mibampator	\N	{}
3593	Mibenratide	\N	{}
3594	Mibefradil	\N	{}
3595	Mibolerone	\N	{}
3596	Miboplatin	\N	{}
3597	Mivazerol	\N	{}
3598	Mivacurium chloride	\N	{}
3599	Mivebresib	\N	{}
3600	Mivobulin	\N	{}
3601	Mivotilate	\N	{}
3602	Migalastat	\N	{}
3603	Miglitol	\N	{}
3604	Miglustat	\N	{}
3605	Midaglizole	\N	{}
3606	Midazogrel	\N	{}
3607	Midazolam	\N	{}
3608	Midaxifylline	\N	{}
3609	Midamaline	\N	{}
3610	Midaflur	\N	{}
3611	Midafotel	\N	{}
3612	Midecamycin	\N	{}
3613	Mideplanin	\N	{}
3614	Midesteine	\N	{}
3615	Midodrine	\N	{}
3616	Midostaurin	\N	{}
3617	Mizagliflozin	\N	{}
3618	Mizolastine	\N	{}
3619	Misonidazole	\N	{}
3620	Misoprostol	\N	{}
3621	Mizoribine	\N	{}
3622	Mikamycin	\N	{}
3623	Micafungin	\N	{}
3624	Miconazole	\N	{}
3625	Mycophenolic acid	\N	{}
3626	Micronomicin	\N	{}
3627	Mixidine	\N	{}
3628	Milacainide	\N	{}
3629	Milameline	\N	{}
3630	Milataxel	\N	{}
3631	Milatuzumab	\N	{}
3632	Milacemide	\N	{}
3633	Milverine	\N	{}
3634	Milveterol	\N	{}
3635	Milenperone	\N	{}
3636	Milipertine	\N	{}
3637	Milnacipran	\N	{}
3638	Milodistim	\N	{}
3639	Miloxacin	\N	{}
3640	Milrinone	\N	{}
3641	Miltefosine	\N	{}
3642	Milfasartan	\N	{}
3643	Milciclib	\N	{}
3644	Mimbane	\N	{}
3645	Mimopezil	\N	{}
3646	Minaxolone	\N	{}
3647	Minalrestat	\N	{}
3648	Minamestane	\N	{}
3649	Minaprine	\N	{}
3650	Mindodilol	\N	{}
3651	Mindoperone	\N	{}
3652	Minepentate	\N	{}
3653	Minodronic acid	\N	{}
3654	Minocromil	\N	{}
3655	Minoxidil	\N	{}
3656	Minolteparin sodium	\N	{}
3657	Minopafant	\N	{}
3658	Minocycline	\N	{}
3659	Minretumomab	\N	{}
3660	Mioflazine	\N	{}
3661	Mipimazole	\N	{}
3662	Mipitroban	\N	{}
3663	Mipomersen	\N	{}
3664	Mipragoside	\N	{}
3665	Miproxifene	\N	{}
3666	Mipsagargin	\N	{}
3667	Mipeginterferon alfa-2b	\N	{}
3668	Mirabegron	\N	{}
3669	Miravirsen	\N	{}
3670	Myralact	\N	{}
3671	Mirvetuximab	\N	{}
3672	Mirvetuximab soravtansine	\N	{}
3673	Miridesap	\N	{}
3674	Mirimostim	\N	{}
3675	Mirincamycin	\N	{}
3676	Miripirium chloride	\N	{}
3677	Miriplatin	\N	{}
3678	Mirisetron	\N	{}
3679	Miristalkonium chloride	\N	{}
3680	Mirogabalin	\N	{}
3681	Mirodenafil	\N	{}
3682	Mirosamicin	\N	{}
3683	Mirococept	\N	{}
3684	Miroprofen	\N	{}
3685	Mirostipen	\N	{}
3686	Myrophine	\N	{}
3687	Mirtazapine	\N	{}
3688	Myrtecaine	\N	{}
3689	Mirfentanil	\N	{}
3690	Mitemcinal	\N	{}
3691	Mitiglinide	\N	{}
3692	Mitindomide	\N	{}
3693	Mitobronitol	\N	{}
3694	Mitogillin	\N	{}
3695	Mitoguazone	\N	{}
3696	Mitozolomide	\N	{}
3697	Mitocarcin	\N	{}
3698	Mitoclomine	\N	{}
3699	Mitoxantrone	\N	{}
3700	Mitolactol	\N	{}
3701	Mitomalcin	\N	{}
3702	Mitomycin	\N	{}
3703	Mitonafide	\N	{}
3704	Mitopodozide	\N	{}
3705	Mitosper	\N	{}
3706	Mitotane	\N	{}
3707	Mitotenamine	\N	{}
3708	Mitoflaxone	\N	{}
3709	Mitoquidone	\N	{}
3710	Mitratapide	\N	{}
3711	Mitumomab	\N	{}
3712	Myfadol	\N	{}
3713	Mifamurtide	\N	{}
3714	Mifentidine	\N	{}
3715	Mifepristone	\N	{}
3716	Mifobate	\N	{}
3717	Micinicate	\N	{}
3718	Mobecarb	\N	{}
3719	Mobenakin	\N	{}
3720	Mobenzoxamine	\N	{}
3721	Moveltipril	\N	{}
3722	Mogamulizumab	\N	{}
3723	Moguisteine	\N	{}
3724	Modaline	\N	{}
3725	Modafinil	\N	{}
3726	Modecainide	\N	{}
3727	Modimelanotide	\N	{}
3728	Modipafant	\N	{}
3729	Modithromycin	\N	{}
3730	Modotuximab	\N	{}
3731	Mozavaptan	\N	{}
3732	Mosapramine	\N	{}
3733	Mosapride	\N	{}
3734	Mozenavir	\N	{}
3735	Moclobemide	\N	{}
3736	Moxaverine	\N	{}
3737	Moxadolen	\N	{}
3738	Moxazocine	\N	{}
3739	Moxaprindine	\N	{}
3740	Moxastine	\N	{}
3741	Moxetumomab pasudotox	\N	{}
3742	Moxidectin	\N	{}
3743	Moxisylyte	\N	{}
3744	Moxicoumone	\N	{}
3745	Moxilubant	\N	{}
3746	Moxipraquine	\N	{}
3747	Moxiraprine	\N	{}
3748	Moxifloxacin	\N	{}
3749	Moxnidazole	\N	{}
3750	Moxestrol	\N	{}
3751	Moctamide	\N	{}
3752	Molgramostim	\N	{}
3753	Molidustat	\N	{}
3754	Molinazone	\N	{}
3755	Molindone	\N	{}
3756	Molracetam	\N	{}
3757	Molsidomine	\N	{}
3758	Molfarnate	\N	{}
3759	Momelotinib	\N	{}
3760	Mometasone	\N	{}
3761	Monalazone disodium	\N	{}
3762	Monalizumab	\N	{}
3763	Monatepil	\N	{}
3764	Mongersen	\N	{}
3765	Monensin	\N	{}
3766	Monepantel	\N	{}
3767	Monobenzone	\N	{}
3768	Monoxerutin	\N	{}
3769	Monometacrine	\N	{}
3770	Monophosphothiamine	\N	{}
3771	Monoethanolamine oleate	\N	{}
3772	Montelukast	\N	{}
3773	Monteplase	\N	{}
3774	Montirelin	\N	{}
3775	Moperone	\N	{}
3776	Mopidamol	\N	{}
3777	Mopidralazine	\N	{}
3778	Moprolol	\N	{}
3779	Morazone	\N	{}
3780	Morantel	\N	{}
3781	Moracizine	\N	{}
3782	Morinamide	\N	{}
3783	Morclofone	\N	{}
3784	Morniflumate	\N	{}
3785	Morocromen	\N	{}
3786	Moroxydine	\N	{}
3787	Moroctocog alfa	\N	{}
3788	Morolimumab	\N	{}
3789	Morsuximide	\N	{}
3790	Morpheridine	\N	{}
3791	Morphine glucuronide	\N	{}
3792	Morforex	\N	{}
3793	Motavizumab	\N	{}
3794	Motapizone	\N	{}
3795	Motexafin	\N	{}
3796	Motesanib	\N	{}
3797	Motolimod	\N	{}
3798	Motrazepam	\N	{}
3799	Motretinide	\N	{}
3800	Mofarotene	\N	{}
3801	Mofebutazone	\N	{}
3802	Mofegiline	\N	{}
3803	Mofezolac	\N	{}
3804	Mofetil	\N	{}
3805	Mofloverine	\N	{}
3806	Mofoxime	\N	{}
3807	Moquizone	\N	{}
3808	Mocetinostat	\N	{}
3809	Mocimycin	\N	{}
3810	Mociprazine	\N	{}
3811	Moexiprilat	\N	{}
3812	Mubritinib	\N	{}
3813	Muzolimine	\N	{}
3814	Mupirocin	\N	{}
3815	Muplestim	\N	{}
3816	Murabutide	\N	{}
3817	Muraglitazar	\N	{}
3818	Mureletecan	\N	{}
3819	Murepavadin	\N	{}
3820	Murodermin	\N	{}
3821	Murocainide	\N	{}
3822	Muromonab-CD3	\N	{}
3823	Nabazenil	\N	{}
3824	Nabilone	\N	{}
3825	Nabitan	\N	{}
3826	Naboctate	\N	{}
3827	Nabumetone	\N	{}
3828	Navamepent	\N	{}
3829	Navarixin	\N	{}
3830	Naveglitazar	\N	{}
3831	Navivumab	\N	{}
3832	Navitoclax	\N	{}
3833	Navicixizumab	\N	{}
3834	Navoximod	\N	{}
3835	Navuridine	\N	{}
3836	Naglivan	\N	{}
3837	Nagrestipen	\N	{}
3838	Nadide	\N	{}
3839	Nadifloxacin	\N	{}
3840	Nadoxolol	\N	{}
3841	Nadorameran	\N	{}
3842	Nadroparin calcium	\N	{}
3843	Nazartinib	\N	{}
3844	Nasaruplase	\N	{}
3845	Nasaruplase beta	\N	{}
3846	Nacartocin	\N	{}
3847	Naquotinib	\N	{}
3848	Nacolomab tafenatox	\N	{}
3849	Naxagolide	\N	{}
3850	Naxaprostene	\N	{}
3851	Naxifylline	\N	{}
3852	Nacubactam	\N	{}
3853	Nalbuphine	\N	{}
3854	Dinalbuphine sebacate	\N	{}
3855	Naldemedine	\N	{}
3856	Nalidixic acid	\N	{}
3857	Nalmexone	\N	{}
3858	Nalmefene	\N	{}
3859	Naloxegol	\N	{}
3860	Naloxone	\N	{}
3861	Nalorphine	\N	{}
3862	Naltalimide	\N	{}
3863	Naltrexone	\N	{}
3864	Naluzotan	\N	{}
3865	Nalfurafine	\N	{}
3866	Namilumab	\N	{}
3867	Naminidil	\N	{}
3868	Naminterol	\N	{}
3869	Namirotene	\N	{}
3870	Namitecan	\N	{}
3871	Namoxyrate	\N	{}
3872	Nanafrocin	\N	{}
3873	Nandrolone	\N	{}
3874	Nanofin	\N	{}
3875	Nanterinone	\N	{}
3876	Nantradol	\N	{}
3877	Napabucasin	\N	{}
3878	Napadisilate	\N	{}
3879	Napactadine	\N	{}
3880	Napamezole	\N	{}
3881	Napirimus	\N	{}
3882	Napitane	\N	{}
3883	Naprodoxime	\N	{}
3884	Naproxen	\N	{}
3885	Naproxol	\N	{}
3886	Naproxcinod	\N	{}
3887	Napsagatran	\N	{}
3888	Napsilate	\N	{}
3889	Naptumomab estafenatox	\N	{}
3890	Narasin	\N	{}
3891	Naranol	\N	{}
3892	Naratriptan	\N	{}
3893	Naratuximab	\N	{}
3894	Naratuximab emtansine	\N	{}
3895	Nardeterol	\N	{}
3896	Narlaprevir	\N	{}
3897	Narnatumab	\N	{}
3898	Naronapride	\N	{}
3899	Naroparcil	\N	{}
3900	Nartograstim	\N	{}
3901	Nastorazepide	\N	{}
3902	Natalizumab	\N	{}
3903	Natamycin	\N	{}
3904	Nateglinide	\N	{}
3905	Nateplase	\N	{}
3906	Sodium amidotrizoate	\N	{}
3907	Sodium apolate	\N	{}
3908	Sodium ascorbate	\N	{}
3909	Sodium aurothiomalate	\N	{}
3910	Sodium aurotiosulfate	\N	{}
3911	Sodium acetrizoate	\N	{}
3912	Sodium bitionolate	\N	{}
3913	Sodium borocaptate (10B)	\N	{}
3914	Sodium hexacyclonate	\N	{}
3915	Sodium gentisate	\N	{}
3916	Sodium glucaspaldrate	\N	{}
3917	Sodium gualenate	\N	{}
4042	Nequinate	\N	{}
3918	Sodium dehydrocholate	\N	{}
3919	Sodium dibunate	\N	{}
3920	Sodium diprotrizoate	\N	{}
3921	Sodium iodide (125I)	\N	{}
3922	Sodium iodide (131I)	\N	{}
3923	Sodium iodohippurate (131I)	\N	{}
3924	Sodium iopodate	\N	{}
3925	Sodium iotalamate (125I)	\N	{}
3926	Sodium iotalamate (131I)	\N	{}
3927	Sodium calcium edetate	\N	{}
3928	Carbazochrome sodium sulfonate	\N	{}
3929	Compound solution of sodium lactate	\N	{}
3930	Sodium metrizoate	\N	{}
3931	Sodium morrhuate	\N	{}
3932	Sodium picosulfate	\N	{}
3933	Sodium picofosfate	\N	{}
3934	Sodium stibogluconate	\N	{}
3935	Sodium stibocaptate	\N	{}
3936	Sodium tetradecyl sulfate	\N	{}
3937	Sodium timerfonate	\N	{}
3938	Sodium tyropanoate	\N	{}
3939	Sodium feredetate	\N	{}
3940	Sodium phosphate (32P)	\N	{}
3941	Compound solution of sodium chloride	\N	{}
3942	Sodium chromate (51Cr)	\N	{}
3943	Sodium cyclamate	\N	{}
3944	Sodium etasulfate	\N	{}
3945	Nafagrel	\N	{}
3946	Nafazatrom	\N	{}
3947	Naphazoline	\N	{}
3948	Nafamostat	\N	{}
3949	Nafarelin	\N	{}
3950	Nafenodone	\N	{}
3951	Nafenopin	\N	{}
3952	Nafetolol	\N	{}
3953	Nafiverine	\N	{}
3954	Nafimidone	\N	{}
3955	Nafithromycin	\N	{}
3956	Nafcaproic acid	\N	{}
3957	Naflocort	\N	{}
3958	Nafoxadol	\N	{}
3959	Nafoxidine	\N	{}
3960	Nafomine	\N	{}
3961	Naftazone	\N	{}
3962	Naftalofos	\N	{}
3963	Naftidrofuryl	\N	{}
3964	Naftypramide	\N	{}
3965	Naftifine	\N	{}
3966	Naftoxate	\N	{}
3967	Naphthonone	\N	{}
3968	Naftopidil	\N	{}
3969	Nafcillin	\N	{}
3970	Nealbarbital	\N	{}
3971	Nebacumab	\N	{}
3972	Nebentan	\N	{}
3973	Nebidrazine	\N	{}
3974	Nebicapone	\N	{}
3975	Neboglamine	\N	{}
3976	Nebotermin	\N	{}
3977	Nebramycin	\N	{}
3978	Nebracetam	\N	{}
3979	Nevirapine	\N	{}
3980	Nedaplatin	\N	{}
3981	Nedocromil	\N	{}
3982	Nesapidil	\N	{}
3983	Nesosteine	\N	{}
3984	Neutramycin	\N	{}
3985	Necopidem	\N	{}
3986	Nexeridine	\N	{}
3987	Nexopamil	\N	{}
3988	Necuparanib	\N	{}
3989	Neladenoson bialanate	\N	{}
3990	Nelarabine	\N	{}
3991	Nelatimotide	\N	{}
3992	Neldazosin	\N	{}
3993	Nelezaprine	\N	{}
3994	Nelivaptan	\N	{}
3995	Nelonicline	\N	{}
3996	Nelotanserin	\N	{}
3997	Nelociguat	\N	{}
3998	Neltenexine	\N	{}
3999	Nelfinavir	\N	{}
4000	Nemadectin	\N	{}
4001	Nemazoline	\N	{}
4002	Nemifitide	\N	{}
4003	Nemolizumab	\N	{}
4004	Nemonapride	\N	{}
4005	Nemonoxacin	\N	{}
4006	Nemorubicin	\N	{}
4007	Neoarsphenamine	\N	{}
4008	Neomycin	\N	{}
4009	Neostigmine bromide	\N	{}
4010	Neocinchophen	\N	{}
4011	Nepadutant	\N	{}
4012	Nepaprazole	\N	{}
4013	Nepafenac	\N	{}
4014	Nepidermin	\N	{}
4015	Nepicastat	\N	{}
4016	Nepinalone	\N	{}
4017	Neptamustine	\N	{}
4018	Neramexane	\N	{}
4019	Neraminol	\N	{}
4020	Neratinib	\N	{}
4021	Nerbacadol	\N	{}
4022	Nerelimomab	\N	{}
4023	Neridronic acid	\N	{}
4024	Nerisopam	\N	{}
4025	Nerispirdine	\N	{}
4026	Nesbuvir	\N	{}
4027	Nesvacumab	\N	{}
4028	Nesiritide	\N	{}
4029	Nestifylline	\N	{}
4030	Netazepide	\N	{}
4031	Netarsudil	\N	{}
4032	Netivudine	\N	{}
4033	Neticonazole	\N	{}
4034	Netilmicin	\N	{}
4035	Netobimin	\N	{}
4036	Netoglitazone	\N	{}
4037	Netupitant	\N	{}
4038	Nefazodone	\N	{}
4039	Nefiracetam	\N	{}
4040	Neflumozide	\N	{}
4041	Nefopam	\N	{}
4043	Necitumumab	\N	{}
4044	Nialamide	\N	{}
4045	Niaprazine	\N	{}
4046	Nibroxane	\N	{}
4047	Nivacortol	\N	{}
4048	Nivimedone	\N	{}
4049	Nivocasan	\N	{}
4050	Nivolumab	\N	{}
4051	Nihydrazone	\N	{}
4052	Niguldipine	\N	{}
4053	Nidroxyzone	\N	{}
4054	Nizatidine	\N	{}
4055	Nisobamate	\N	{}
4056	Nisoxetine	\N	{}
4057	Nizofenone	\N	{}
4058	Nicainoprol	\N	{}
4059	Nicametate	\N	{}
4060	Nicanartine	\N	{}
4061	Nicaraven	\N	{}
4062	Nicafenine	\N	{}
4063	Nikethamide	\N	{}
4064	Niclosamide	\N	{}
4065	Niclofolan	\N	{}
4066	Nicoboxil	\N	{}
4067	Nicogrelate	\N	{}
4068	Nicodicodine	\N	{}
4069	Nicodicosapent	\N	{}
4070	Nicoclonate	\N	{}
4071	Nicocodine	\N	{}
4072	Nicocortonide	\N	{}
4073	Nicoxamat	\N	{}
4074	Nicomol	\N	{}
4075	Nicomorphine	\N	{}
4076	Nicorandil	\N	{}
4077	Nicoracetam	\N	{}
4078	Nicothiazone	\N	{}
4079	Nicotinamide	\N	{}
4080	Nicotinic acid	\N	{}
4081	Nicotredole	\N	{}
4082	Nicofibrate	\N	{}
4083	Nicopholine	\N	{}
4084	Nicofuranose	\N	{}
4085	Nicofurate	\N	{}
4086	Nixylic acid	\N	{}
4087	Nictiazem	\N	{}
4088	Nictindole	\N	{}
4089	Nilvadipine	\N	{}
4090	Nileprost	\N	{}
4091	Nilotinib	\N	{}
4092	Nilprazole	\N	{}
4093	Niludipine	\N	{}
4094	Nilutamide	\N	{}
4095	Nilestriol	\N	{}
4096	Nimazone	\N	{}
4097	Nimesulide	\N	{}
4098	Nimetazepam	\N	{}
4099	Nimidane	\N	{}
4100	Nimodipine	\N	{}
4101	Nimorazole	\N	{}
4102	Nimotuzumab	\N	{}
4103	Nimustine	\N	{}
4104	Nintedanib	\N	{}
4105	Niometacin	\N	{}
4106	Niperotidine	\N	{}
4107	Nipradilol	\N	{}
4108	Niprofazone	\N	{}
4109	Niravoline	\N	{}
4110	Niraxostat	\N	{}
4111	Niraparib	\N	{}
4112	Niridazole	\N	{}
4113	Nirogacestat	\N	{}
4114	Nisbuterol	\N	{}
4115	Nystatin	\N	{}
4116	Nisterime	\N	{}
4117	Nitazoxanide	\N	{}
4118	Nitarsone	\N	{}
4119	Nitecapone	\N	{}
4120	Nitisinone	\N	{}
4121	Nitrazepam	\N	{}
4122	Nitracrine	\N	{}
4123	Nitramisole	\N	{}
4124	Nitrafudam	\N	{}
4125	Nitraquazone	\N	{}
4126	Nitrendipine	\N	{}
4127	Nitrefazole	\N	{}
4253	Odalprofen	\N	{}
4128	Nitricholine perchlorate	\N	{}
4129	Nitrodan	\N	{}
4130	Nitroclofene	\N	{}
4131	Nitroxinil	\N	{}
4132	Nitroxoline	\N	{}
4133	Nitromifene	\N	{}
4134	Nitroscanate	\N	{}
4135	Nitrosulfathiazole	\N	{}
4136	Nitrofural	\N	{}
4137	Nitrofurantoin	\N	{}
4138	Nitrocycline	\N	{}
4139	Nifekalant	\N	{}
4140	Nifenazone	\N	{}
4141	Nifenalol	\N	{}
4142	Niflumic acid	\N	{}
4143	Nifungin	\N	{}
4144	Nifuradene	\N	{}
4145	Nifuraldezone	\N	{}
4146	Nifuralide	\N	{}
4147	Nifuratel	\N	{}
4148	Nifuratrone	\N	{}
4149	Nifurvidine	\N	{}
4150	Nifurdazil	\N	{}
4151	Nifurethazone	\N	{}
4152	Nifurzide	\N	{}
4153	Nifurizone	\N	{}
4154	Nifurimide	\N	{}
4155	Nifurmazole	\N	{}
4156	Nifurmerone	\N	{}
4157	Nifuroxazide	\N	{}
4158	Nifuroxime	\N	{}
4159	Nifuroquine	\N	{}
4160	Nifurpipone	\N	{}
4161	Nifurpirinol	\N	{}
4162	Nifurprazine	\N	{}
4163	Nifursemizone	\N	{}
4164	Nifursol	\N	{}
4165	Nifurthiazole	\N	{}
4166	Nifurtimox	\N	{}
4167	Nifurtoinol	\N	{}
4168	Nifurfoline	\N	{}
4169	Nifurquinazol	\N	{}
4170	Niceverine	\N	{}
4171	Nicergoline	\N	{}
4172	Niceritrol	\N	{}
4173	Noberastine	\N	{}
4174	Nobiprostolan	\N	{}
4175	Novobiocin	\N	{}
4176	Nogalamycin	\N	{}
4177	Nosantine	\N	{}
4178	Nosiheptide	\N	{}
4179	Nocloprost	\N	{}
4180	Nocodazole	\N	{}
4181	Noxiptiline	\N	{}
4182	Noxytiolin	\N	{}
4183	Nolasiban	\N	{}
4184	Nolatrexed	\N	{}
4185	Nolinium bromide	\N	{}
4186	Nolomirole	\N	{}
4187	Nolpitantium besilate	\N	{}
4188	Nomegestrol	\N	{}
4189	Nomelidine	\N	{}
4190	Nomifensine	\N	{}
4191	Nonabine	\N	{}
4192	Nonacog alfa	\N	{}
4193	Nonacog beta pegol	\N	{}
4194	Nonacog gamma	\N	{}
4195	Nonaperone	\N	{}
4196	Nonapyrimine	\N	{}
4197	Nonathymulin	\N	{}
4198	Nonivamide	\N	{}
4199	Nonoxinol	\N	{}
4200	Noracymethadol	\N	{}
4201	Norboletone	\N	{}
4202	Norbudrine	\N	{}
4203	Norvinisterone	\N	{}
4204	Norgesterone	\N	{}
4205	Norgestimate	\N	{}
4206	Norgestomet	\N	{}
4207	Norgestrel	\N	{}
4208	Norgestrienone	\N	{}
4209	Nordazepam	\N	{}
4210	Nordinone	\N	{}
4211	Noreximide	\N	{}
4212	Norclostebol	\N	{}
4213	Norcodeine	\N	{}
4214	Norlevorphanol	\N	{}
4215	Norleusactide	\N	{}
4216	Norletimol	\N	{}
4217	Normethadone	\N	{}
4218	Normorphine	\N	{}
4219	Norpipanone	\N	{}
4220	Nortetrazepam	\N	{}
4221	Nortopixantrone	\N	{}
4222	Nortriptyline	\N	{}
4223	Norfenefrine	\N	{}
4224	Norfloxacin	\N	{}
4225	Norfloxacin succinil	\N	{}
4226	Norflurane	\N	{}
4227	Norelgestromin	\N	{}
4228	Norethandrolone	\N	{}
4229	Noretynodrel	\N	{}
4230	Norethisterone	\N	{}
4231	Noscapine	\N	{}
4232	Nofecainide	\N	{}
4233	Nuvenzepine	\N	{}
4234	Nuclomedone	\N	{}
4235	Nuclotixene	\N	{}
4236	Nupafant	\N	{}
4237	Nusinersen	\N	{}
4238	Nufenoxole	\N	{}
4239	Obatoclax	\N	{}
4240	Oberadilol	\N	{}
4241	Obeticholic acid	\N	{}
4242	Obidoxime chloride	\N	{}
4243	Obiltoxaximab	\N	{}
4244	Obinepitide	\N	{}
4245	Obinutuzumab	\N	{}
4246	Obicetrapib	\N	{}
4247	Oblimersen	\N	{}
4248	Ovandrotone albumin	\N	{}
4249	Ovemotide	\N	{}
4250	Oglemilast	\N	{}
4251	Oglufanide	\N	{}
4252	Odalasvir	\N	{}
4254	Odanacatib	\N	{}
4255	Odapipam	\N	{}
4256	Odiparcil	\N	{}
4257	Odulimomab	\N	{}
4258	Ozagrel	\N	{}
4259	Ozanezumab	\N	{}
4260	Ozanimod	\N	{}
4261	Ozarelix	\N	{}
4262	Osaterone	\N	{}
4263	Ozenoxacin	\N	{}
4264	Ozogamicin	\N	{}
4265	Ozolinone	\N	{}
4266	Ozoralizumab	\N	{}
4267	Ocaperidone	\N	{}
4268	Ocaratuzumab	\N	{}
4269	Oclacitinib	\N	{}
4270	Ocrase	\N	{}
4271	Ocrelizumab	\N	{}
4272	Ocrilate	\N	{}
4273	Ocriplasmin	\N	{}
4274	Oxabolone cipionate	\N	{}
4275	Oxabrexine	\N	{}
4276	Oxagrelate	\N	{}
4277	Oxadimedine	\N	{}
4278	Oxazafone	\N	{}
4279	Oxazepam	\N	{}
4280	Oxazidione	\N	{}
4281	Oxazolam	\N	{}
4282	Oxazorone	\N	{}
4283	Oxalinast	\N	{}
4284	Oxaliplatin	\N	{}
4285	Oxamarin	\N	{}
4286	Oxametacin	\N	{}
4287	Oxamisole	\N	{}
4288	Oxamniquine	\N	{}
4289	Oxanamide	\N	{}
4290	Oxandrolone	\N	{}
4291	Oxantel	\N	{}
4292	Oxapadol	\N	{}
4293	Oxapium iodide	\N	{}
4294	Oxaprozin	\N	{}
4295	Oxapropanium iodide	\N	{}
4296	Oxaprotiline	\N	{}
4297	Oxarbazole	\N	{}
4298	Oxatomide	\N	{}
4299	Oxaflozane	\N	{}
4300	Oxaflumazine	\N	{}
4301	Oxaceprol	\N	{}
4302	Oxacillin	\N	{}
4303	Oxdralazine	\N	{}
4304	Oxeglitazar	\N	{}
4305	Oxeclosporin	\N	{}
4306	Oxeladin	\N	{}
4307	Oxelumab	\N	{}
4308	Oxendolone	\N	{}
4309	Oxepinac	\N	{}
4310	Oxetacaine	\N	{}
4311	Oxetacillin	\N	{}
4312	Oxetorone	\N	{}
4313	Oxibendazole	\N	{}
4314	Oxybenzone	\N	{}
4315	Oxibetaine	\N	{}
4316	Oxybuprocaine	\N	{}
4317	Oxybutynin	\N	{}
4318	Oxiglutatione	\N	{}
4319	Oxydipentonium chloride	\N	{}
4320	Oxidopamine	\N	{}
4321	Oxidronic acid	\N	{}
4322	Oxysonium iodide	\N	{}
4323	Oxisopred	\N	{}
4324	Oxyclipine	\N	{}
4325	Oxyclozanide	\N	{}
4326	Oxycodone	\N	{}
4327	Oxiconazole	\N	{}
4328	Oxilorphan	\N	{}
4329	Oxilofrine	\N	{}
4330	Oxymesterone	\N	{}
4331	Oxymetazoline	\N	{}
4332	Oxymetholone	\N	{}
4333	Oximonam	\N	{}
4334	Oxymorphone	\N	{}
4335	Oxindanac	\N	{}
4336	Oxiniacic acid	\N	{}
4337	Oxypendyl	\N	{}
4338	Oxiperomide	\N	{}
4339	Oxypertine	\N	{}
4340	Oxypyrronium bromide	\N	{}
4341	Oxipurinol	\N	{}
4342	Oxiramide	\N	{}
4343	Oxiracetam	\N	{}
4344	Oxyridazine	\N	{}
4345	Oxisuran	\N	{}
4346	Oxytetracycline	\N	{}
4347	Oxitefonium bromide	\N	{}
4348	Oxytocin	\N	{}
4349	Oxitriptan	\N	{}
4350	Oxitriptyline	\N	{}
4351	Oxitropium bromide	\N	{}
4352	Oxyfedrine	\N	{}
4353	Oxyfenamate	\N	{}
4354	Oxyphenbutazone	\N	{}
4355	Oxyphenisatine	\N	{}
4356	Oxyphenonium bromide	\N	{}
4357	Oxifentorex	\N	{}
4358	Oxyphencyclimine	\N	{}
4359	Oxifungin	\N	{}
4360	Oxycinchophen	\N	{}
4361	Oxcarbazepine	\N	{}
4362	Oxmetidine	\N	{}
4363	Oxogestone	\N	{}
4364	Oxoglurate	\N	{}
4365	Oxodipine	\N	{}
4366	Oxolamine	\N	{}
4367	Oxolinic acid	\N	{}
4368	Oxomemazine	\N	{}
4369	Oxonazine	\N	{}
4370	Oxoprostol	\N	{}
4371	Oxophenarsine	\N	{}
4372	Oxprenolol	\N	{}
4373	Oxfendazole	\N	{}
4374	Oxpheneridine	\N	{}
4375	Oxfenicine	\N	{}
4376	Octabenzone	\N	{}
4377	Octaverine	\N	{}
4378	Octazamide	\N	{}
4379	Octacaine	\N	{}
4380	Octamylamine	\N	{}
4381	Octamoxin	\N	{}
4382	Octanoic acid	\N	{}
4383	Octapinol	\N	{}
4384	Octastine	\N	{}
4385	Octatropine methylbromide	\N	{}
4386	Octafonium chloride	\N	{}
4387	Octenidine	\N	{}
4388	Octil	\N	{}
4389	Octimibate	\N	{}
4390	Octisalate	\N	{}
4391	Octodrine	\N	{}
4392	Octocog alfa	\N	{}
4393	Octocrilene	\N	{}
4394	Octoxinol	\N	{}
4395	Octopamine	\N	{}
4396	Octotiamine	\N	{}
4397	Octreotide	\N	{}
4398	Octrizole	\N	{}
4399	Octriptyline	\N	{}
4400	Ocfentanil	\N	{}
4401	Olamine	\N	{}
4402	Olamufloxacin	\N	{}
4403	Olanexidine	\N	{}
4404	Olanzapine	\N	{}
4405	Olaparib	\N	{}
4406	Olaptesed pegol	\N	{}
4407	Olaratumab	\N	{}
4408	Olaflur	\N	{}
4409	Olaquindox	\N	{}
4410	Olvanil	\N	{}
4411	Oleandomycin	\N	{}
4412	Olesoxime	\N	{}
4413	Oletimol	\N	{}
4414	Olivomycin	\N	{}
4415	Olipudase alfa	\N	{}
4416	Oliceridine	\N	{}
4417	Olcorolimus	\N	{}
4418	Olmesartan medoxomil	\N	{}
4419	Olmidine	\N	{}
4420	Olmutinib	\N	{}
4421	Olodaterol	\N	{}
4422	Olokizumab	\N	{}
4423	Olopatadine	\N	{}
4424	Olpadronic acid	\N	{}
4425	Olpimedone	\N	{}
4426	Olprinone	\N	{}
4427	Olradipine	\N	{}
4428	Olsalazine	\N	{}
4429	Oltipraz	\N	{}
4430	Olumacostat glasaretil	\N	{}
4431	Olcegepant	\N	{}
4432	Omaveloxolone	\N	{}
4433	Omadacycline	\N	{}
4434	Omalizumab	\N	{}
4435	Omapatrilat	\N	{}
4436	Omarigliptin	\N	{}
4437	Omacetaxine mepesuccinate	\N	{}
4438	Omaciclovir	\N	{}
4439	Ombitasvir	\N	{}
4440	Ombrabulin	\N	{}
4441	Omecamtiv mecarbil	\N	{}
4442	Omeprazole	\N	{}
4443	Omiganan	\N	{}
4444	Omigapil	\N	{}
4445	Omidenepag	\N	{}
4446	Omidoline	\N	{}
4447	Omiloxetine	\N	{}
4448	Omipalisib	\N	{}
4449	Omoconazole	\N	{}
4450	Omonasteine	\N	{}
4451	Omocianine	\N	{}
4452	Ompinamer	\N	{}
4453	Omtriptolide	\N	{}
4454	Onalespib	\N	{}
4455	Onapristone	\N	{}
4456	Onartuzumab	\N	{}
4457	Ondansetron	\N	{}
4458	Ondelopran	\N	{}
4459	Onercept	\N	{}
4460	Ontazolast	\N	{}
4461	Ontianil	\N	{}
4462	Ontuxizumab	\N	{}
4463	Opaviraline	\N	{}
4464	Opanixil	\N	{}
4465	Opebacan	\N	{}
4466	Opicapone	\N	{}
4467	Opiniazide	\N	{}
4468	Opipramol	\N	{}
4469	Opicinumab	\N	{}
4470	Oportuzumab monatox	\N	{}
4471	Opratonium iodide	\N	{}
4472	Oprelvekin	\N	{}
4473	Oprozomib	\N	{}
4474	Orazamide	\N	{}
4475	Orazipone	\N	{}
4476	Orantinib	\N	{}
4477	Orbifloxacin	\N	{}
4478	Orbofiban	\N	{}
4479	Orbutopril	\N	{}
4480	Orvepitant	\N	{}
4481	Orgotein	\N	{}
4482	Ordopidine	\N	{}
4483	Oregovomab	\N	{}
4484	Oreptacog alfa (activated)	\N	{}
4485	Orestrate	\N	{}
4486	Orientiparcin	\N	{}
4487	Orilotimod	\N	{}
4488	Oritavancin	\N	{}
4489	Orconazole	\N	{}
4490	Orlistat	\N	{}
4491	Ormaplatin	\N	{}
4492	Ormeloxifene	\N	{}
4493	Ormetoprim	\N	{}
4494	Ornidazole	\N	{}
4495	Ornipressin	\N	{}
4496	Ornithine	\N	{}
4497	Ornoprostil	\N	{}
4498	Orotirelin	\N	{}
4499	Orotic acid	\N	{}
4500	Orpanoxin	\N	{}
4501	Ortataxel	\N	{}
4502	Orteronel	\N	{}
4503	Ortetamine	\N	{}
4504	Orticumab	\N	{}
4505	Orphenadrine	\N	{}
4506	Orciprenaline	\N	{}
4507	Osalmid	\N	{}
4508	Osanetant	\N	{}
4509	Oseltamivir	\N	{}
4510	Osemozotan	\N	{}
4511	Osilodrostat	\N	{}
4512	Osimertinib	\N	{}
4513	Osmadizone	\N	{}
4514	Ospemifene	\N	{}
4515	Ostreogrycin	\N	{}
4516	Osutidine	\N	{}
4517	Otamixaban	\N	{}
4518	Otelixizumab	\N	{}
4519	Otenabant	\N	{}
4520	Otenzepad	\N	{}
4521	Oteracil	\N	{}
4522	Oteseconazole	\N	{}
4523	Otilonium bromide	\N	{}
4524	Otimerate sodium	\N	{}
4525	Otlertuzumab	\N	{}
4526	Ofatumumab	\N	{}
4527	Ofloxacin	\N	{}
4528	Ofornine	\N	{}
4529	Ofranergene obadenovec	\N	{}
4530	Oftasceine	\N	{}
4531	Ociltide	\N	{}
4532	Ocinaplon	\N	{}
4533	Octinoxate	\N	{}
4534	Pagibaximab	\N	{}
4535	Pagoclone	\N	{}
4536	Padeliporfin	\N	{}
4537	Padimate	\N	{}
4538	Padoporfin	\N	{}
4539	Padsevonil	\N	{}
4540	Pazelliptine	\N	{}
4541	Pazinaclone	\N	{}
4542	Pazoxide	\N	{}
4543	Pazopanib	\N	{}
4544	Pazufloxacin	\N	{}
4545	Paquinimod	\N	{}
4546	Paclitaxel	\N	{}
4547	Paclitaxel poliglumex	\N	{}
4548	Paclitaxel trevatide	\N	{}
4549	Paclitaxel ceribate	\N	{}
4550	Pacrinolol	\N	{}
4551	Pacritinib	\N	{}
4552	Paxamate	\N	{}
4553	Pactimibe	\N	{}
4554	Palatrigine	\N	{}
4555	Palbociclib	\N	{}
4556	Paldimycin	\N	{}
4557	Palivizumab	\N	{}
4558	Palinavir	\N	{}
4559	Paliperidone	\N	{}
4560	Paliroden	\N	{}
4561	Palifermin	\N	{}
4562	Palifosfamide	\N	{}
4563	Palmidrol	\N	{}
4564	Palmoxiric acid	\N	{}
4565	Palovarotene	\N	{}
4566	Palosuran	\N	{}
4567	Palonidipine	\N	{}
4568	Palonosetron	\N	{}
4569	Palucorcel	\N	{}
4570	Pamaqueside	\N	{}
4571	Pamapimod	\N	{}
4572	Pamatolol	\N	{}
4573	Pamaquine	\N	{}
4574	Pamidronic acid	\N	{}
4575	Pamicogrel	\N	{}
4576	Pamiteplase	\N	{}
4577	Pamrevlumab	\N	{}
4578	Panadiplon	\N	{}
4579	Panamesine	\N	{}
4580	Panidazole	\N	{}
4581	Panipenem	\N	{}
4582	Panitumumab	\N	{}
4583	Pancopride	\N	{}
4584	Pancuronium bromide	\N	{}
4585	Panobacumab	\N	{}
4586	Panobinostat	\N	{}
4587	Panomifene	\N	{}
4588	Pantenicate	\N	{}
4589	Panthenol	\N	{}
4590	Pantoprazole	\N	{}
4591	Panulisib	\N	{}
4592	Panuramine	\N	{}
4593	Papaveroline	\N	{}
4594	Paraxazone	\N	{}
4595	Paramethadione	\N	{}
4596	Paramethasone	\N	{}
4597	Parapenzolate bromide	\N	{}
4598	Parapropamol	\N	{}
4599	Pararosaniline embonate	\N	{}
4600	Parathiazine	\N	{}
4601	Parathyroid hormone	\N	{}
4602	Paraflutizide	\N	{}
4603	Paracetamol	\N	{}
4604	Parbendazole	\N	{}
4605	Parvaquone	\N	{}
4606	Pargeverine	\N	{}
4607	Pargyline	\N	{}
4608	Pargolol	\N	{}
4609	Pardoprunox	\N	{}
4610	Parecoxib	\N	{}
4611	Pareptide	\N	{}
4612	Paridocaine	\N	{}
4613	Paricalcitol	\N	{}
4614	Paritaprevir	\N	{}
4615	Parconazole	\N	{}
4616	Parnaparin sodium	\N	{}
4617	Parogrelil	\N	{}
4618	Parodilol	\N	{}
4619	Paroxetine	\N	{}
4620	Paroxypropione	\N	{}
4621	Paromomycin	\N	{}
4622	Parsalmide	\N	{}
4623	Partricin	\N	{}
4624	Parcetasal	\N	{}
4625	Parethoxycaine	\N	{}
4626	Pasiniazid	\N	{}
4627	Pasireotide	\N	{}
4628	Pascolizumab	\N	{}
4629	Pasotuxizumab	\N	{}
4630	Patamostat	\N	{}
4631	Pateclizumab	\N	{}
4632	Patidegib	\N	{}
4633	Patiromer calcium	\N	{}
4634	Patisiran	\N	{}
4635	Patritumab	\N	{}
4636	Patupilone	\N	{}
4637	Paulomycin	\N	{}
4638	Pafenolol	\N	{}
4639	Pafuramidine	\N	{}
4640	Pevonedistat	\N	{}
4641	Pecazine	\N	{}
4642	Pecocycline	\N	{}
4643	Pexantel	\N	{}
4644	Pexastimogene devacirepvec	\N	{}
4645	Pexacerfont	\N	{}
4646	Pexelizumab	\N	{}
4647	Pexiganan	\N	{}
4648	Pexidartinib	\N	{}
4649	Pexmetinib	\N	{}
4650	Pelanserin	\N	{}
4651	Peldesine	\N	{}
4652	Peliglitazar	\N	{}
4653	Peliomycin	\N	{}
4654	Pelitinib	\N	{}
4655	Pelitrexol	\N	{}
4656	Pelretin	\N	{}
4657	Pelrinone	\N	{}
4658	Pelubiprofen	\N	{}
4659	Pemaglitazar	\N	{}
4660	Pemafibrate	\N	{}
4661	Pembrolizumab	\N	{}
4662	Pemedolac	\N	{}
4663	Pemerid	\N	{}
4664	Pemetrexed	\N	{}
4665	Pemirolast	\N	{}
4666	Pemoline	\N	{}
4667	Pempidine	\N	{}
4668	Penamecillin	\N	{}
4669	Penbutolol	\N	{}
4670	Pengitoxin	\N	{}
4671	Pendecamaine	\N	{}
4672	Pendetide	\N	{}
4673	Penimepicycline	\N	{}
4674	Penimocycline	\N	{}
4675	Penirolol	\N	{}
4676	Penicillamine	\N	{}
4677	Penicillinase	\N	{}
4678	Penmesterol	\N	{}
4679	Penoctonium bromide	\N	{}
4680	Penprostene	\N	{}
4681	Pentabamate	\N	{}
4682	Pentagastrin	\N	{}
4683	Pentagestrone	\N	{}
4684	Pentazocine	\N	{}
4685	Pentalamide	\N	{}
4686	Pentamethonium bromide	\N	{}
4687	Pentamidine	\N	{}
4688	Pentamoxane	\N	{}
4689	Pentamorphone	\N	{}
4690	Pentapiperide	\N	{}
4691	Pentapiperium metilsulfate	\N	{}
4692	Pentafluranol	\N	{}
4693	Pentaquine	\N	{}
4694	Pentacynium chloride	\N	{}
4695	Pentaerithrityl tetranitrate	\N	{}
4696	Pentexil	\N	{}
4697	Pentetic acid	\N	{}
4698	Pentetrazol	\N	{}
4699	Pentetreotide	\N	{}
4700	Pentiapine	\N	{}
4701	Pentigetide	\N	{}
4702	Pentizidone	\N	{}
4703	Pentisomide	\N	{}
4704	Pentisomicin	\N	{}
4705	Pentifylline	\N	{}
4706	Pentobarbital	\N	{}
4707	Pentosan polysulfate sodium	\N	{}
4708	Pentoxyverine	\N	{}
4709	Pentoxifylline	\N	{}
4710	Pentolonium tartrate	\N	{}
4711	Pentomone	\N	{}
4712	Pentopril	\N	{}
4713	Pentorex	\N	{}
4714	Pentostatin	\N	{}
4715	Pentrinitrol	\N	{}
4716	Penthrichloral	\N	{}
4717	Penfluridol	\N	{}
4718	Penflutizide	\N	{}
4719	Penciclovir	\N	{}
4720	Peplomycin	\N	{}
4721	Pepstatin	\N	{}
4722	Peradoxime	\N	{}
4723	Parsatuzumab	\N	{}
4724	Perakizumab	\N	{}
4725	Peraclopone	\N	{}
4726	Peralopride	\N	{}
4727	Peramivir	\N	{}
4728	Perampanel	\N	{}
4729	Perastine	\N	{}
4730	Peratizole	\N	{}
4731	Perafensine	\N	{}
4732	Peraquinsin	\N	{}
4733	Perbufylline	\N	{}
4734	Perhexiline	\N	{}
4735	Pergolide	\N	{}
4736	Peretinoin	\N	{}
4737	Perzinfotel	\N	{}
4738	Perisoxal	\N	{}
4739	Perimetazine	\N	{}
4741	Perifosine	\N	{}
4742	Periciazine	\N	{}
4743	Perlapine	\N	{}
4744	Permethrin	\N	{}
4745	Perospirone	\N	{}
4746	Persilic acid	\N	{}
4747	Pertuzumab	\N	{}
4748	Perphenazine	\N	{}
4749	Perflexane	\N	{}
4750	Perflenapent	\N	{}
4751	Perflisobutane	\N	{}
4752	Perflisopent	\N	{}
4753	Perfluamine	\N	{}
4754	Perflubrodec	\N	{}
4755	Perflubron	\N	{}
4756	Perflubutane	\N	{}
4757	Perflunafene	\N	{}
4758	Perflutren	\N	{}
4759	Perfomedil	\N	{}
4760	Perfosfamide	\N	{}
4761	Pethidine	\N	{}
4762	Petrichloral	\N	{}
4763	Peficitinib	\N	{}
4764	Pefcalcitol	\N	{}
4765	Pefloxacin	\N	{}
4766	Peforelin	\N	{}
4767	Pecilocin	\N	{}
4768	Pibaxizine	\N	{}
4769	Pibecarb	\N	{}
4770	Piberaline	\N	{}
4771	Piboserod	\N	{}
4772	Pibrentasvir	\N	{}
4773	Pibrozelesin	\N	{}
4774	Pibutidine	\N	{}
4775	Pivagabine	\N	{}
4776	Pivalate	\N	{}
4777	Pivampicillin	\N	{}
4778	Pivenfrine	\N	{}
4779	Pivmecillinam	\N	{}
4780	Pivoxazepam	\N	{}
4781	Pivoxetil	\N	{}
4782	Pivoxil	\N	{}
4783	Pivopril	\N	{}
4784	Pidilizumab	\N	{}
4785	Pidobenzone	\N	{}
4786	Pidolacetamol	\N	{}
4787	Pidolic acid	\N	{}
4788	Pidotimod	\N	{}
4789	Pizotifen	\N	{}
4790	Picartamide	\N	{}
4791	Picafibrate	\N	{}
4792	Piquizil	\N	{}
4793	Piquindone	\N	{}
4794	Piketoprofen	\N	{}
4795	Piclamilast	\N	{}
4796	Piclidenoson	\N	{}
4797	Piclozotan	\N	{}
4798	Picloxydine	\N	{}
4799	Piclonidine	\N	{}
4800	Piclopastine	\N	{}
4801	Picobenzide	\N	{}
4802	Picodralazine	\N	{}
4803	Picolamine	\N	{}
4804	Piconol	\N	{}
4805	Picoperine	\N	{}
4806	Picoplatin	\N	{}
4807	Picoprazole	\N	{}
4808	Picotrin	\N	{}
4809	Pixantrone	\N	{}
4810	Pictilisib	\N	{}
4811	Picumast	\N	{}
4812	Picumeterol	\N	{}
4813	Pilaralisib	\N	{}
4814	Pildralazine	\N	{}
4815	Pilsicainide	\N	{}
4816	Pimavanserin	\N	{}
4817	Pimagedine	\N	{}
4818	Pimasertib	\N	{}
4819	Pimeclone	\N	{}
4820	Pimecrolimus	\N	{}
4821	Pimelautide	\N	{}
4822	Pimetacin	\N	{}
4823	Pimethixene	\N	{}
4824	Pimetine	\N	{}
4825	Pimetremide	\N	{}
4826	Pimefylline	\N	{}
4827	Pimilprost	\N	{}
4828	Piminodine	\N	{}
4829	Pimobendan	\N	{}
4830	Pimodivir	\N	{}
4831	Pimozide	\N	{}
4832	Pimonidazole	\N	{}
4833	Pinaverium bromide	\N	{}
4834	Pinadoline	\N	{}
4835	Pinazepam	\N	{}
4836	Pinatuzumab vedotin	\N	{}
4837	Pinafide	\N	{}
4838	Pinacidil	\N	{}
4839	Pindolol	\N	{}
4840	Pincainide	\N	{}
4841	Pinokalant	\N	{}
4842	Pinoxepin	\N	{}
4843	Pinolcaine	\N	{}
4844	Pinometostat	\N	{}
4845	Pioglitazone	\N	{}
4846	Pipazetate	\N	{}
4847	Pipamazine	\N	{}
4848	Pipamperone	\N	{}
4849	Pipacycline	\N	{}
4850	Pipebuzone	\N	{}
4851	Pipequaline	\N	{}
4852	Pipecuronium bromide	\N	{}
4853	Pipemidic acid	\N	{}
4854	Pipendoxifene	\N	{}
4855	Pipenzolate bromide	\N	{}
4856	Piperazine calcium edetate	\N	{}
4857	Piperamide	\N	{}
4858	Piperacetazine	\N	{}
4859	Piperacillin	\N	{}
4860	Piperidolate	\N	{}
4861	Piperylone	\N	{}
4862	Piperocaine	\N	{}
4863	Piperoxan	\N	{}
4864	Pipethanate	\N	{}
4865	Pipobroman	\N	{}
4866	Pipoxizine	\N	{}
4867	Pipoxolan	\N	{}
4868	Pipoctanone	\N	{}
4869	Piposulfan	\N	{}
4870	Pipotiazine	\N	{}
4871	Pipofezine	\N	{}
4872	Pipradimadol	\N	{}
4873	Pipradrol	\N	{}
4874	Pipramadol	\N	{}
4875	Pipratecol	\N	{}
4876	Piprinhydrinate	\N	{}
4877	Piprozolin	\N	{}
4878	Piprocurarium iodide	\N	{}
4879	Piprofurol	\N	{}
4880	Piragliatin	\N	{}
4881	Pyrazinamide	\N	{}
4882	Pirazmonam	\N	{}
4883	Pirazolac	\N	{}
4884	Pirazofurin	\N	{}
4885	Piraxelate	\N	{}
4886	Pirandamine	\N	{}
4887	Pyrantel	\N	{}
4888	Pirarubicin	\N	{}
4889	Piracetam	\N	{}
4890	Pirbenicillin	\N	{}
4891	Pirbuterol	\N	{}
4892	Pyrvinium chloride	\N	{}
4893	Pirdonium bromide	\N	{}
4894	Pirenzepine	\N	{}
4895	Pirenoxine	\N	{}
4896	Pirenperone	\N	{}
4897	Pirepolol	\N	{}
4898	Piretanide	\N	{}
4899	Piribedil	\N	{}
4900	Pyridarone	\N	{}
4901	Piridicillin	\N	{}
4902	Piridocaine	\N	{}
4903	Piridoxilate	\N	{}
4904	Pyridoxine	\N	{}
4905	Pyridostigmine bromide	\N	{}
4906	Pyridofylline	\N	{}
4907	Piridronic acid	\N	{}
4908	Pyricarbate	\N	{}
4909	Piriqualone	\N	{}
4910	Pyrimethamine	\N	{}
4911	Pyrimitate	\N	{}
4912	Pirinidazole	\N	{}
4913	Pirinixil	\N	{}
4914	Pirinixic acid	\N	{}
4915	Pyrinoline	\N	{}
4916	Piriprost	\N	{}
4917	Pirisudanol	\N	{}
4918	Pyritidium bromide	\N	{}
4919	Pyrithyldione	\N	{}
4920	Pyritinol	\N	{}
4921	Pyrithione zinc	\N	{}
4922	Piritramide	\N	{}
4923	Piritrexim	\N	{}
4924	Pirifibrate	\N	{}
4925	Pirlimycin	\N	{}
4926	Pirlindole	\N	{}
4927	Pirmagrel	\N	{}
4928	Pirmenol	\N	{}
4929	Pirnabin	\N	{}
4930	Pyrovalerone	\N	{}
4931	Piroheptine	\N	{}
4932	Pirogliride	\N	{}
4933	Pirodavir	\N	{}
4934	Pirodomast	\N	{}
4935	Pirozadil	\N	{}
4936	Pyroxamine	\N	{}
4937	Piroxantrone	\N	{}
4938	Piroxicam	\N	{}
4939	Pyroxylin	\N	{}
4940	Piroximone	\N	{}
4941	Piroxicillin	\N	{}
4942	Piroctone	\N	{}
4943	Pirolazamide	\N	{}
4944	Pirolate	\N	{}
4945	Piromelatine	\N	{}
4946	Piromidic acid	\N	{}
4947	Pyronaridine	\N	{}
4948	Pyrophendane	\N	{}
4949	Pirprofen	\N	{}
4950	Pirralkonium bromide	\N	{}
4951	Pyrrocaine	\N	{}
4952	Pyrrolifene	\N	{}
4953	Pyrrolnitrin	\N	{}
4954	Pirsidomine	\N	{}
4955	Pirtenidine	\N	{}
4956	Pirfenidone	\N	{}
4957	Pirquinozol	\N	{}
4958	Pitavastatin	\N	{}
4959	Pytamine	\N	{}
4960	Pitenodil	\N	{}
4961	Pitolisant	\N	{}
4962	Pitofenone	\N	{}
4963	Pitrakinra	\N	{}
4964	Pituxate	\N	{}
4965	Pifarnine	\N	{}
4966	Pifexole	\N	{}
4967	Pifenate	\N	{}
4968	Piflutixol	\N	{}
4969	Pifoxime	\N	{}
4970	Pifonakin	\N	{}
4971	Picenadol	\N	{}
4972	Picilorex	\N	{}
4973	Plazomicin	\N	{}
4974	Placulumab	\N	{}
4975	Plaunotol	\N	{}
4976	Plauracin	\N	{}
4977	Plafibride	\N	{}
4978	Plevitrexed	\N	{}
4979	Pleuromulin	\N	{}
4980	Plecanatide	\N	{}
4981	Pleconaril	\N	{}
4982	Plerixafor	\N	{}
4983	Plicamycin	\N	{}
4984	Plinabulin	\N	{}
4985	Plitidepsin	\N	{}
4986	Plozalizumab	\N	{}
4987	Plomestane	\N	{}
4988	Plusonermin	\N	{}
4989	Pobilukast	\N	{}
4990	Povidone	\N	{}
4991	Vonlerolizumab	\N	{}
4992	Podilfen	\N	{}
4993	Posaconazole	\N	{}
4994	Pozanicline	\N	{}
4995	Posaraprost	\N	{}
4996	Posatirelin	\N	{}
4997	Poziotinib	\N	{}
4998	Pocapavir	\N	{}
4999	Polacrilin	\N	{}
5000	Polaprezinc	\N	{}
5001	Polatuzumab vedotin	\N	{}
5002	Poldine metilsulfate	\N	{}
5003	Polybenzarsol	\N	{}
5004	Poligeenan	\N	{}
5005	Polihexanide	\N	{}
5006	Polygeline	\N	{}
5007	Poliglecaprone	\N	{}
5008	Polyglycolic acid	\N	{}
5009	Poliglusam	\N	{}
5010	Polidexide sulfate	\N	{}
5011	Polidronium chloride	\N	{}
5012	Policapram	\N	{}
5013	Polycarbophil	\N	{}
5014	Policresulen	\N	{}
5015	Polixetonium chloride	\N	{}
5016	Polymyxin B	\N	{}
5017	Polynoxylin	\N	{}
5018	Polisaponin	\N	{}
5019	Polysorbate	\N	{}
5020	Politef	\N	{}
5021	Polythiazide	\N	{}
5022	Polifeprosan	\N	{}
5023	Polyestradiol phosphate	\N	{}
5024	Polyetadene	\N	{}
5025	Polmacoxib	\N	{}
5026	Poloxalene	\N	{}
5027	Poloxamer	\N	{}
5028	Pomaglumetad methionil	\N	{}
5029	Pomalidomide	\N	{}
5030	Pomisartan	\N	{}
5031	Ponazuril	\N	{}
5032	Ponalrestat	\N	{}
5033	Ponatinib	\N	{}
5034	Ponezumab	\N	{}
5035	Ponesimod	\N	{}
5036	Ponfibrate	\N	{}
5037	Porfimer sodium	\N	{}
5038	Porfiromycin	\N	{}
5039	Poseltinib	\N	{}
5040	Posizolid	\N	{}
5041	Poskine	\N	{}
5042	Pravadoline	\N	{}
5043	Pravastatin	\N	{}
5044	Pradefovir	\N	{}
5045	Pradigastat	\N	{}
5046	Pradimotide	\N	{}
5047	Pradofloxacin	\N	{}
5048	Prazarelix	\N	{}
5049	Prazepam	\N	{}
5050	Prazepine	\N	{}
5051	Praziquantel	\N	{}
5052	Prazitone	\N	{}
5053	Prazocillin	\N	{}
5054	Prasugrel	\N	{}
5055	Prajmalium bitartrate	\N	{}
5056	Praxadine	\N	{}
5057	Practolol	\N	{}
5058	Pralatrexate	\N	{}
5059	Pralidoxime iodide	\N	{}
5060	Pralmorelin	\N	{}
5061	Pralnacasan	\N	{}
5062	Pramiverine	\N	{}
5063	Pramiconazole	\N	{}
5064	Pramipexole	\N	{}
5065	Pramiracetam	\N	{}
5066	Pramlintide	\N	{}
5067	Pramocaine	\N	{}
5068	Prampine	\N	{}
5069	Pranazepide	\N	{}
5070	Pranidipine	\N	{}
5071	Pranlukast	\N	{}
5072	Pranolium chloride	\N	{}
5073	Pranoprofen	\N	{}
5074	Pranosal	\N	{}
5075	Prasterone	\N	{}
5076	Pratosartan	\N	{}
5077	Pracinostat	\N	{}
5078	Pregabalin	\N	{}
5079	Pregnenolone	\N	{}
5080	Prednazate	\N	{}
5081	Prednazoline	\N	{}
5082	Prednisolamate	\N	{}
5083	Prednisolone	\N	{}
5084	Prednisolone steaglate	\N	{}
5085	Prednisone	\N	{}
5086	Prednicarbate	\N	{}
5087	Prednylidene	\N	{}
5088	Prednimustine	\N	{}
5089	Prezalumab	\N	{}
5090	Prezatide copper acetate	\N	{}
5091	Preclamol	\N	{}
5092	Prexasertib	\N	{}
5093	Prexigebersen	\N	{}
5094	Preladenant	\N	{}
5095	Premazepam	\N	{}
5096	Premafloxacin	\N	{}
5097	Prenalterol	\N	{}
5098	Prenylamine	\N	{}
5099	Prenisteine	\N	{}
5100	Prenoverine	\N	{}
5101	Prenoxdiazine	\N	{}
5102	Presatovir	\N	{}
5103	Pretamazium iodide	\N	{}
5104	Pretiadil	\N	{}
5105	Pretomanid	\N	{}
5106	Prefenamate	\N	{}
5107	Pribecaine	\N	{}
5108	Prideperone	\N	{}
5109	Pridefine	\N	{}
5110	Pridinol	\N	{}
5111	Pridopidine	\N	{}
5112	Prizidilol	\N	{}
5113	Prisotinol	\N	{}
5114	Priliximab	\N	{}
5115	Prilocaine	\N	{}
5116	Primaperone	\N	{}
5117	Primaquine	\N	{}
5118	Primidolol	\N	{}
5119	Primidone	\N	{}
5120	Primycin	\N	{}
5121	Prinaberel	\N	{}
5122	Prinoxodan	\N	{}
5123	Prinomastat	\N	{}
5124	Prinomide	\N	{}
5125	Priralfinamide	\N	{}
5126	Pristinamycin	\N	{}
5127	Pritelivir	\N	{}
5128	Pritoxaximab	\N	{}
5129	Pritumumab	\N	{}
5130	Prifelone	\N	{}
5131	Prifinium bromide	\N	{}
5132	Prifuroline	\N	{}
5133	Proadifen	\N	{}
5134	Probarbital sodium	\N	{}
5135	Probenecid	\N	{}
5136	Probucol	\N	{}
5137	Progabide	\N	{}
5138	Proheptazine	\N	{}
5139	Progesterone	\N	{}
5140	Proglumetacin	\N	{}
5141	Proglumide	\N	{}
5142	Proguanil	\N	{}
5143	Prodeconium bromide	\N	{}
5144	Prodilidine	\N	{}
5145	Prodipine	\N	{}
5146	Prodolic acid	\N	{}
5147	Prozapine	\N	{}
5148	Procaine	\N	{}
5149	Procainamide	\N	{}
5150	Procarbazine	\N	{}
5151	Procaterol	\N	{}
5152	Proquazone	\N	{}
5153	Proclonol	\N	{}
5154	Procodazole	\N	{}
5155	Proxazole	\N	{}
5156	Proxetil	\N	{}
5157	Proxibarbal	\N	{}
5158	Proxibutene	\N	{}
5159	Proxicromil	\N	{}
5160	Proxymetacaine	\N	{}
5161	Proxifezone	\N	{}
5162	Proxyphylline	\N	{}
5163	Proxorphan	\N	{}
5164	Proligestone	\N	{}
5165	Proline	\N	{}
5166	Prolintane	\N	{}
5167	Prolonium iodide	\N	{}
5168	Promazine	\N	{}
5169	Promegestone	\N	{}
5170	Promelase	\N	{}
5171	Promestriene	\N	{}
5172	Promethazine	\N	{}
5173	Promethazine teoclate	\N	{}
5174	Promoxolane	\N	{}
5175	Promolate	\N	{}
5176	Pronetalol	\N	{}
5177	Propagermanium	\N	{}
5178	Propazolamide	\N	{}
5179	Propamidine	\N	{}
5180	Propanidid	\N	{}
5181	Propanocaine	\N	{}
5182	Propantheline bromide	\N	{}
5183	Propatylnitrate	\N	{}
5184	Propacetamol	\N	{}
5185	Propenidazole	\N	{}
5186	Propentofylline	\N	{}
5187	Properidine	\N	{}
5188	Propetamide	\N	{}
5189	Propetandrol	\N	{}
5190	Propiverine	\N	{}
5191	Propizepine	\N	{}
5192	Propisergide	\N	{}
5193	Propikacin	\N	{}
5194	Propyl docetrizoate	\N	{}
5195	Propylhexedrine	\N	{}
5196	Propyliodone	\N	{}
5197	Propylthiouracil	\N	{}
5198	Propinetidine	\N	{}
5199	Propiolactone	\N	{}
5200	Propiomazine	\N	{}
5201	Propyperone	\N	{}
5202	Propipocaine	\N	{}
5203	Propiram	\N	{}
5204	Propyromazine bromide	\N	{}
5205	Propyphenazone	\N	{}
5206	Propicillin	\N	{}
5207	Propoxate	\N	{}
5208	Propoxycaine	\N	{}
5209	Propofol	\N	{}
5210	Prorenoate potassium	\N	{}
5211	Proroxan	\N	{}
5212	Prospidium chloride	\N	{}
5213	Prostalene	\N	{}
5214	Prosultiamine	\N	{}
5215	Prosulpride	\N	{}
5216	Proscillaridin	\N	{}
5342	Rafabegron	\N	{}
5217	Protamine zinc insulin injection	\N	{}
5218	Protamine sulfate	\N	{}
5219	Protheobromine	\N	{}
5220	Proterguride	\N	{}
5221	Protizinic acid	\N	{}
5222	Prothixene	\N	{}
5223	Protionamide	\N	{}
5224	Protiofate	\N	{}
5225	Prothipendyl	\N	{}
5226	Protirelin	\N	{}
5227	Protokylol	\N	{}
5228	Protriptyline	\N	{}
5229	Profadol	\N	{}
5230	Profexalone	\N	{}
5231	Profenamine	\N	{}
5232	Proflavine	\N	{}
5233	Proflazepam	\N	{}
5234	Proquinolate	\N	{}
5235	Prochlorperazine	\N	{}
5236	Procyclidine	\N	{}
5237	Procymate	\N	{}
5238	Procinolol	\N	{}
5239	Procinonide	\N	{}
5240	Pruvanserin	\N	{}
5241	Prucalopride	\N	{}
5242	Prulifloxacin	\N	{}
5243	Pseudoephedrine	\N	{}
5244	Psilocybine	\N	{}
5245	Pumaprazole	\N	{}
5246	Pumafentrine	\N	{}
5247	Pumitepa	\N	{}
5248	Pumosetrag	\N	{}
5249	Puromycin	\N	{}
5250	Pegademase	\N	{}
5251	Pegadricase	\N	{}
5252	Pegacaristim	\N	{}
5253	Pegaldesleukin	\N	{}
5254	Pegamotecan	\N	{}
5255	Pegaptanib	\N	{}
5256	Pegargiminase	\N	{}
5257	Pegaspargase	\N	{}
5258	Pegbovigrastim	\N	{}
5259	Pegvaliase	\N	{}
5260	Pegvisomant	\N	{}
5261	Pegvorhyaluronidase alfa	\N	{}
5262	Pegdinetanib	\N	{}
5263	Peginesatide	\N	{}
5264	Peginterferon alfa-2a	\N	{}
5265	Peginterferon alfa-2b	\N	{}
5266	Peginterferon beta-1a	\N	{}
5267	Pegcantratinib	\N	{}
5268	Pegcrisantaspase	\N	{}
5269	Pegloticase	\N	{}
5270	Pegmusirudin	\N	{}
5271	Pegnartograstim	\N	{}
5272	Pegnivacogin	\N	{}
5273	Pegorgotein	\N	{}
5274	Pegoterate	\N	{}
5275	Pegpleranib	\N	{}
5276	Pegsunercept	\N	{}
5277	Pegteograstim	\N	{}
5278	Pegunigalsidase alfa	\N	{}
5279	Pegfilgrastim	\N	{}
5280	Rabacfosadine	\N	{}
5281	Rabeximod	\N	{}
5282	Rabeprazole	\N	{}
5283	Rabusertib	\N	{}
5284	Ravidasvir	\N	{}
5285	Ravoxertinib	\N	{}
5286	Ravuconazole	\N	{}
5287	Ragaglitazar	\N	{}
5288	Radavirsen	\N	{}
5289	Radalbuvir	\N	{}
5290	Radafaxine	\N	{}
5291	Radezolid	\N	{}
5292	Radequinil	\N	{}
5293	Radiprodil	\N	{}
5294	Radotermin	\N	{}
5295	Radotinib	\N	{}
5296	Radretumab	\N	{}
5297	Rasagiline	\N	{}
5298	Razaxaban	\N	{}
5299	Rasburicase	\N	{}
5300	Raseglurant	\N	{}
5301	Razinodil	\N	{}
5302	Razobazam	\N	{}
5303	Razoxane	\N	{}
5304	Razupenem	\N	{}
5305	Raclopride	\N	{}
5306	Racotumomab	\N	{}
5307	Vixotrigine	\N	{}
5308	Raxibacumab	\N	{}
5309	Raxofelast	\N	{}
5310	Ractopamine	\N	{}
5311	Ralimetinib	\N	{}
5312	Ralinepag	\N	{}
5313	Ralitoline	\N	{}
5314	Raloxifene	\N	{}
5315	Ralpancizumab	\N	{}
5316	Raltegravir	\N	{}
5317	Raltitrexed	\N	{}
5318	Ramatercept	\N	{}
5319	Ramatroban	\N	{}
5320	Ramelteon	\N	{}
5321	Ramixotidine	\N	{}
5322	Ramiprilat	\N	{}
5323	Ramifenazone	\N	{}
5324	Ramnodigin	\N	{}
5325	Ramoplanin	\N	{}
5326	Ramorelix	\N	{}
5327	Ramosetron	\N	{}
5328	Ramucirumab	\N	{}
5329	Ramciclane	\N	{}
5330	Ranevetmab	\N	{}
5331	Ranelic acid	\N	{}
5332	Ranibizumab	\N	{}
5333	Ranimycin	\N	{}
5334	Ranimustine	\N	{}
5335	Ranirestat	\N	{}
5336	Ranitidine	\N	{}
5337	Ranolazine	\N	{}
5338	Ranpirnase	\N	{}
5339	Rapacuronium bromide	\N	{}
5340	Rapastinel	\N	{}
5341	Rathyronine	\N	{}
5343	Rafivirumab	\N	{}
5344	Rafigrelide	\N	{}
5345	Rafoxanide	\N	{}
5346	Racecadotril	\N	{}
5347	Racementhol	\N	{}
5348	Racemetirosine	\N	{}
5349	Racemethorphan	\N	{}
5350	Racemoramide	\N	{}
5351	Racemorphan	\N	{}
5352	Racepinefrine	\N	{}
5353	Racephedrine	\N	{}
5354	Racefemine	\N	{}
5355	Racefenicol	\N	{}
5356	Rebamipide	\N	{}
5357	Rebastinib	\N	{}
5358	Rebimastat	\N	{}
5359	Reboxetine	\N	{}
5360	Revamilast	\N	{}
5361	Revaprazan	\N	{}
5362	Revatropate	\N	{}
5363	Reveglucosidase alfa	\N	{}
5364	Revenast	\N	{}
5365	Revexepride	\N	{}
5366	Revefenacin	\N	{}
5367	Revizinone	\N	{}
5368	Reviparin sodium	\N	{}
5369	Revospirone	\N	{}
5370	Revusiran	\N	{}
5371	Regavirumab	\N	{}
5372	Regadenoson	\N	{}
5373	Reglitazar	\N	{}
5374	Regorafenib	\N	{}
5375	Regramostim	\N	{}
5376	Regrelor	\N	{}
5377	Redaporfin	\N	{}
5378	Rezatomidine	\N	{}
5379	Reserpine	\N	{}
5380	Resiquimod	\N	{}
5381	Resocortol	\N	{}
5382	Resorantel	\N	{}
5383	Recainam	\N	{}
5384	Recanaclotide	\N	{}
5385	Reclazepam	\N	{}
5386	Recoflavone	\N	{}
5387	Relacatib	\N	{}
5388	Relamorelin	\N	{}
5389	Relebactam	\N	{}
5390	Relenopride	\N	{}
5391	Relcovaptan	\N	{}
5392	Relomycin	\N	{}
5393	Reltecimod	\N	{}
5394	Relugolix	\N	{}
5395	Remacemide	\N	{}
5396	Remeglurant	\N	{}
5397	Remetinostat	\N	{}
5398	Remikiren	\N	{}
5399	Remimazolam	\N	{}
5400	Remiprostol	\N	{}
5401	Remifentanil	\N	{}
5402	Remogliflozin etabonate	\N	{}
5403	Remoxipride	\N	{}
5404	Remtolumab	\N	{}
5405	Renanolone	\N	{}
5406	Renzapride	\N	{}
5407	Renytoline	\N	{}
5408	Rentiapril	\N	{}
5409	Repagermanium	\N	{}
5410	Repaglinide	\N	{}
5411	Reparixin	\N	{}
5412	Repinotan	\N	{}
5413	Repirinast	\N	{}
5414	Repifermin	\N	{}
5415	Repromicin	\N	{}
5416	Reproterol	\N	{}
5417	Resatorvid	\N	{}
5418	Reslizumab	\N	{}
5419	Resminostat	\N	{}
5420	Rescimetol	\N	{}
5421	Rescinnamine	\N	{}
5422	Retapamulin	\N	{}
5423	Retaspimycin	\N	{}
5424	Retelliptine	\N	{}
5425	Reteplase	\N	{}
5426	Retigabine	\N	{}
5427	Retinol	\N	{}
5428	Retosiban	\N	{}
5429	Refametinib	\N	{}
5430	Refanezumab	\N	{}
5431	Recilisib	\N	{}
5432	Ribavirin	\N	{}
5433	Ribaminol	\N	{}
5434	Riboprine	\N	{}
5435	Ribostamycin	\N	{}
5436	Riboflavin	\N	{}
5437	Ribociclib	\N	{}
5438	Ribuvaptan	\N	{}
5439	Rivabazumab	\N	{}
5440	Rivabazumab pegol	\N	{}
5441	Rivanicline	\N	{}
5442	Rivastigmine	\N	{}
5443	Rivenprost	\N	{}
5444	Rivipansel	\N	{}
5445	Riviciclib	\N	{}
5446	Rivoglitazone	\N	{}
5447	Rigosertib	\N	{}
5448	Ridazolol	\N	{}
5449	Ridaforolimus	\N	{}
5450	Ridinilazole	\N	{}
5451	Ridogrel	\N	{}
5452	Risarestat	\N	{}
5453	Rizatriptan	\N	{}
5454	Risedronic acid	\N	{}
5455	Rismorelin	\N	{}
5456	Risocaine	\N	{}
5457	Rizolipase	\N	{}
5458	Risotilide	\N	{}
5459	Ricasetron	\N	{}
5460	Ricolinostat	\N	{}
5461	Rilapine	\N	{}
5462	Rilapladib	\N	{}
5463	Rilimogene galvacirepvec	\N	{}
5464	Rilimogene glafolivec	\N	{}
5465	Rilmazafone	\N	{}
5466	Rilmakalim	\N	{}
5467	Rilmenidine	\N	{}
5468	Rilozarone	\N	{}
5469	Rilonacept	\N	{}
5470	Rilopirox	\N	{}
5471	Rilotumumab	\N	{}
5472	Rilpivirine	\N	{}
5473	Riluzole	\N	{}
5474	Rimazolium metilsulfate	\N	{}
5475	Rimacalib	\N	{}
5476	Rimantadine	\N	{}
5477	Rimegepant	\N	{}
5478	Rimexolone	\N	{}
5479	Rimeporide	\N	{}
5480	Rimiducid	\N	{}
5481	Rimiterol	\N	{}
5482	Rimcazole	\N	{}
5483	Rimonabant	\N	{}
5484	Rimoprogin	\N	{}
5485	Rintatolimod	\N	{}
5486	Rinucumab	\N	{}
5487	Riodipine	\N	{}
5488	Rioprostil	\N	{}
5489	Riociguat	\N	{}
5490	Ripazepam	\N	{}
5491	Ripasudil	\N	{}
5492	Ripisartan	\N	{}
5493	Risankizumab	\N	{}
5494	Rispenzepine	\N	{}
5495	Risperidone	\N	{}
5496	Ristianol	\N	{}
5497	Ristocetin	\N	{}
5498	Ritanserin	\N	{}
5499	Ritiometan	\N	{}
5500	Ritipenem	\N	{}
5501	Ritobegron	\N	{}
5502	Ritodrine	\N	{}
5503	Ritolukast	\N	{}
5504	Ritonavir	\N	{}
5505	Ritropirronium bromide	\N	{}
5506	Ritrosulfan	\N	{}
5507	Rituximab	\N	{}
5508	Rifabutin	\N	{}
5509	Rifaximin	\N	{}
5510	Rifalazil	\N	{}
5511	Rifamexil	\N	{}
5512	Rifametane	\N	{}
5513	Rifamide	\N	{}
5514	Rifamycin	\N	{}
5515	Rifampicin	\N	{}
5516	Rifapentine	\N	{}
5517	Riferminogene pecaplasmid	\N	{}
5518	Robalzotan	\N	{}
5519	Robatumumab	\N	{}
5520	Robenacoxib	\N	{}
5521	Robenidine	\N	{}
5522	Rovalpituzumab	\N	{}
5523	Rovalpituzumab tesirine	\N	{}
5524	Rovatirelin	\N	{}
5525	Rovelizumab	\N	{}
5526	Rogaratinib	\N	{}
5527	Rogletimide	\N	{}
5528	Rodocaine	\N	{}
5529	Rodorubicin	\N	{}
5530	Rozanolixizumab	\N	{}
5531	Rosaprostol	\N	{}
5532	Rosaramicin	\N	{}
5533	Rosuvastatin	\N	{}
5534	Rocastine	\N	{}
5535	Rokitamycin	\N	{}
5536	Roxadimate	\N	{}
5537	Roxadustat	\N	{}
5538	Roxarsone	\N	{}
5539	Roxatidine	\N	{}
5540	Roxibolone	\N	{}
5541	Roxindole	\N	{}
5542	Roxithromycin	\N	{}
5543	Roxifiban	\N	{}
5544	Roxolonium metilsulfate	\N	{}
5545	Roxoperone	\N	{}
5546	Rocuronium bromide	\N	{}
5547	Rolapitant	\N	{}
5548	Rolafagrel	\N	{}
5549	Rolgamidine	\N	{}
5550	Roledumab	\N	{}
5551	Roletamide	\N	{}
5552	Rolziracetam	\N	{}
5553	Rolipoltide	\N	{}
5554	Rolipram	\N	{}
5555	Rolitetracycline	\N	{}
5556	Rolicyclidine	\N	{}
5557	Rolicyprine	\N	{}
5558	Rolodine	\N	{}
5559	Rolofylline	\N	{}
5560	Romazarit	\N	{}
5561	Romergoline	\N	{}
5562	Romidepsin	\N	{}
5563	Romiplostim	\N	{}
5564	Romifenone	\N	{}
5565	Romifidine	\N	{}
5566	Romosozumab	\N	{}
5567	Romurtide	\N	{}
5568	Ronacaleret	\N	{}
5569	Ronactolol	\N	{}
5570	Roneparstat	\N	{}
5571	Ronidazole	\N	{}
5572	Ronipamil	\N	{}
5573	Ronifibrate	\N	{}
5574	Roniciclib	\N	{}
5575	Ronopterin	\N	{}
5576	Rontalizumab	\N	{}
5577	Ropivacaine	\N	{}
5578	Ropidoxuridine	\N	{}
5579	Ropizine	\N	{}
5580	Ropinirole	\N	{}
5581	Ropitoin	\N	{}
5582	Ropeginterferon alfa-2b	\N	{}
5583	Rosabulin	\N	{}
5584	Rosiglitazone	\N	{}
5585	Rosiptor	\N	{}
5586	Rosmantuzumab	\N	{}
5587	Rosoxacin	\N	{}
5588	Rosomidnar	\N	{}
5589	Rosonabant	\N	{}
5590	Rostaporfin	\N	{}
5591	Rostafuroxin	\N	{}
5592	Rosterolone	\N	{}
5593	Rotamicillin	\N	{}
5594	Rotigaptide	\N	{}
5595	Rotigotine	\N	{}
5596	Rotoxamine	\N	{}
5597	Rotraxate	\N	{}
5598	Rofecoxib	\N	{}
5599	Rofelodine	\N	{}
5600	Rofleponide	\N	{}
5601	Roflumilast	\N	{}
5602	Roflurane	\N	{}
5603	Roquinimex	\N	{}
5604	Rocepafant	\N	{}
5605	Rociverine	\N	{}
5606	Rociclovir	\N	{}
5607	Rociletinib	\N	{}
5608	Rubitecan	\N	{}
5609	Ruboxistaurin	\N	{}
5610	Ruvazone	\N	{}
5611	Ruzadolane	\N	{}
5612	Ruzasvir	\N	{}
5613	Rucaparib	\N	{}
5614	Ruclosporin	\N	{}
5615	Ruxolitinib	\N	{}
5616	Rupatadine	\N	{}
5617	Rupintrivir	\N	{}
5618	Ruplizumab	\N	{}
5619	Rurioctocog alfa pegol	\N	{}
5620	Rusalatide	\N	{}
5621	Rutamycin	\N	{}
5622	Rutoside	\N	{}
5623	Rufinamide	\N	{}
5624	Rufloxacin	\N	{}
5625	Rufocromomycin	\N	{}
5626	Sabarubicin	\N	{}
5627	Sabeluzole	\N	{}
5628	Sabiporide	\N	{}
5629	Sabcomeline	\N	{}
5630	Saviprazole	\N	{}
5631	Savoxepin	\N	{}
5632	Savolitinib	\N	{}
5633	Sagandipine	\N	{}
5634	Sagopilone	\N	{}
5635	Saquinavir	\N	{}
5636	Sacrosidase	\N	{}
5637	Saxagliptin	\N	{}
5638	Sacubitril	\N	{}
5639	Sacubitrilat	\N	{}
5640	Salazodine	\N	{}
5641	Salazosulfadimidine	\N	{}
5642	Salazosulfamide	\N	{}
5643	Salazosulfathiazole	\N	{}
5644	Salantel	\N	{}
5645	Salafibrate	\N	{}
5646	Salacetamide	\N	{}
5647	Salverine	\N	{}
5648	Saletamide	\N	{}
5649	Salinazid	\N	{}
5650	Salinomycin	\N	{}
5651	Salirasib	\N	{}
5652	Salicylamide	\N	{}
5653	Salcaprozic acid	\N	{}
5654	Salclobuzic acid	\N	{}
5655	Salcolex	\N	{}
5656	Salmeterol	\N	{}
5657	Salmefamol	\N	{}
5658	Salmisteine	\N	{}
5659	Salnacedin	\N	{}
5660	Salprotoside	\N	{}
5661	Salsalate	\N	{}
5662	Salfluverine	\N	{}
5663	Salbutamol	\N	{}
5664	Samalizumab	\N	{}
5665	Samarium (153Sm) lexidronam	\N	{}
5666	Samatasvir	\N	{}
5667	Sameridine	\N	{}
5668	Samidorphan	\N	{}
5669	Samixogrel	\N	{}
5670	Sampatrilat	\N	{}
5671	Sampirtine	\N	{}
5672	Sanguinarium chloride	\N	{}
5673	Sanfetrinem	\N	{}
5674	Sancycline	\N	{}
5675	Sapanisertib	\N	{}
5676	Sapacitabine	\N	{}
5677	Satralizumab	\N	{}
5678	Saperconazole	\N	{}
5679	Sapitinib	\N	{}
5680	Saprisartan	\N	{}
5681	Sapropterin	\N	{}
5682	Sarakalim	\N	{}
5683	Saracatinib	\N	{}
5684	Saralasin	\N	{}
5685	Sarafloxacin	\N	{}
5686	Sargramostim	\N	{}
5687	Sardomozide	\N	{}
5688	Saredutant	\N	{}
5689	Sarecycline	\N	{}
5690	Sarizotan	\N	{}
5691	Sarilumab	\N	{}
5692	Saripidem	\N	{}
5693	Sarcolysin	\N	{}
5694	Sarmazenil	\N	{}
5695	Sarmoxicillin	\N	{}
5696	Saroglitazar	\N	{}
5697	Sarolaner	\N	{}
5698	Sarpicillin	\N	{}
5699	Sarpogrelate	\N	{}
5700	Sarsagenin	\N	{}
5701	Saruplase	\N	{}
5702	Satavaptan	\N	{}
5703	Saterinone	\N	{}
5704	Satigrel	\N	{}
5705	Satoreotide	\N	{}
5706	Satoreotide trizoxetan	\N	{}
5707	Satranidazole	\N	{}
5708	Satraplatin	\N	{}
5709	Satumomab	\N	{}
5710	Safinamide	\N	{}
5711	Safingol	\N	{}
5712	Safironil	\N	{}
5713	Safotibant	\N	{}
5714	Sacituzumab	\N	{}
5715	Sacituzumab govitecan	\N	{}
5716	Sebelipase alfa	\N	{}
5717	Sebriplatin	\N	{}
5718	Sevelamer	\N	{}
5719	Sevirumab	\N	{}
5720	Seviteronel	\N	{}
5721	Sevitropium mesilate	\N	{}
5722	Sevopramide	\N	{}
5723	Sevoflurane	\N	{}
5724	Sevuparin sodium	\N	{}
5725	Seganserin	\N	{}
5726	Segesterone	\N	{}
5727	Seglitide	\N	{}
5728	Sedecamycin	\N	{}
5729	Sezolamide	\N	{}
5730	Secalciferol	\N	{}
5731	Secbutabarbital	\N	{}
5732	Sequifenadine	\N	{}
5733	Seclazone	\N	{}
5734	Secnidazole	\N	{}
5735	Secobarbital	\N	{}
5736	Secoverine	\N	{}
5737	Secretin	\N	{}
5738	Secretin human	\N	{}
5739	Secukinumab	\N	{}
5740	Securinine	\N	{}
5741	Seladelpar	\N	{}
5742	Selamectin	\N	{}
5743	Selegiline	\N	{}
5744	Selexipag	\N	{}
5745	Selenomethionine (75Se)	\N	{}
5746	Selepressin	\N	{}
5747	Seletalisib	\N	{}
5748	Seletracetam	\N	{}
5749	Selinexor	\N	{}
5750	Selisistat	\N	{}
5751	Seliciclib	\N	{}
5752	Selodenoson	\N	{}
5753	Selonsertib	\N	{}
5754	Selprazine	\N	{}
5755	Seltorexant	\N	{}
5756	Selumetinib	\N	{}
5757	Selurampanel	\N	{}
5758	Selfotel	\N	{}
5759	Semagacestat	\N	{}
5760	Semaglutide	\N	{}
5761	Semaxanib	\N	{}
5762	Semapimod	\N	{}
5763	Sematilide	\N	{}
5764	Sembragiline	\N	{}
5765	Semduramicin	\N	{}
5766	Semorphone	\N	{}
5767	Semotiadil	\N	{}
5768	Semparatide	\N	{}
5769	Semuloparin sodium	\N	{}
5770	Semustine	\N	{}
5771	Senazodan	\N	{}
5772	Senicapoc	\N	{}
5773	Senrebotase	\N	{}
5774	Seocalcitol	\N	{}
5775	Sepazonium chloride	\N	{}
5776	Sepantronium bromide	\N	{}
5777	Sepetaprost	\N	{}
5778	Sepimostat	\N	{}
5779	Sepranolone	\N	{}
5780	Seprilose	\N	{}
5781	Seproxetine	\N	{}
5782	Serabelisib	\N	{}
5783	Serazapine	\N	{}
5784	Seractide	\N	{}
5785	Seratrodast	\N	{}
5786	Sergliflozin etabonate	\N	{}
5787	Sergolexole	\N	{}
5788	Serdemetan	\N	{}
5789	Serelaxin	\N	{}
5790	Seribantumab	\N	{}
5791	Seridopidine	\N	{}
5792	Serine	\N	{}
5793	Serlopitant	\N	{}
5794	Sermetacin	\N	{}
5795	Sermorelin	\N	{}
5796	Serrapeptase	\N	{}
5797	Sertaconazole	\N	{}
5798	Sertindole	\N	{}
5799	Sertraline	\N	{}
5800	Serfibrate	\N	{}
5801	Setazindol	\N	{}
5802	Setastine	\N	{}
5803	Setileuton	\N	{}
5804	Setipafant	\N	{}
5805	Setipiprant	\N	{}
5806	Setiptiline	\N	{}
5807	Setmelanotide	\N	{}
5808	Setoxaximab	\N	{}
5809	Setoperone	\N	{}
5810	Setrobuvir	\N	{}
5811	Siagoside	\N	{}
5812	Sibenadet	\N	{}
5813	Sibopirdine	\N	{}
5814	Sibrafiban	\N	{}
5815	Sibrotuzumab	\N	{}
5816	Sibutramine	\N	{}
5817	Sivelestat	\N	{}
5818	Sivifene	\N	{}
5819	Siguazodan	\N	{}
5820	Sisomicin	\N	{}
5821	Sizofiran	\N	{}
5822	Siccanin	\N	{}
5823	Silandrone	\N	{}
5824	Sildenafil	\N	{}
5825	Silibinin	\N	{}
5826	Silidianin	\N	{}
5827	Silicristin	\N	{}
5828	Silmitasertib	\N	{}
5829	Silodosin	\N	{}
5830	Silperisone	\N	{}
5831	Siltenzepine	\N	{}
5832	Silteplase	\N	{}
5833	Siltuximab	\N	{}
5834	Simaldrate	\N	{}
5835	Simvastatin	\N	{}
5836	Simendan	\N	{}
5837	Simenepag	\N	{}
5838	Simeprevir	\N	{}
5839	Simeticone	\N	{}
5840	Symetine	\N	{}
5841	Simetride	\N	{}
5842	Symclosene	\N	{}
5843	Simoctocog alfa	\N	{}
5844	Simotaxel	\N	{}
5845	Simtrazene	\N	{}
5846	Simtuzumab	\N	{}
5847	Simfibrate	\N	{}
5848	Sinapultide	\N	{}
5849	Sinefungin	\N	{}
5850	Sinitrodil	\N	{}
5851	Sincalide	\N	{}
5852	Sintropium bromide	\N	{}
5853	Sipatrigine	\N	{}
5854	Siplizumab	\N	{}
5855	Sipoglitazar	\N	{}
5856	Siponimod	\N	{}
5857	Siramesine	\N	{}
5858	Siratiazem	\N	{}
5859	Syrosingopine	\N	{}
5860	Sirolimus	\N	{}
5861	Sirukumab	\N	{}
5862	Sisapronil	\N	{}
5863	Sitagliptin	\N	{}
5864	Sitaxentan	\N	{}
5865	Sitalidone	\N	{}
5866	Sitamaquine	\N	{}
5867	Sitafloxacin	\N	{}
5868	Sitimagene ceradenovec	\N	{}
5869	Sitogluside	\N	{}
5870	Sitofibrate	\N	{}
5871	Sitravatinib	\N	{}
5872	Sifalimumab	\N	{}
5873	Sifaprazine	\N	{}
5874	Squalamine	\N	{}
5875	Scopinast	\N	{}
5876	Smilagenin	\N	{}
5877	Sobetirome	\N	{}
5878	Soblidotin	\N	{}
5879	Sobuzoxane	\N	{}
5880	Sovaprevir	\N	{}
5881	Sodelglitazar	\N	{}
5882	Solabegron	\N	{}
5883	Solanezumab	\N	{}
5884	Solasulfone	\N	{}
5885	Solimastat	\N	{}
5886	Solypertine	\N	{}
5887	Solitomab	\N	{}
5888	Solithromycin	\N	{}
5889	Solifenacin	\N	{}
5890	Solnatide	\N	{}
5891	Solpecainol	\N	{}
5892	Solcitinib	\N	{}
5893	Somavaratan	\N	{}
5894	Somavubove	\N	{}
5895	Somagrebove	\N	{}
5896	Somalapor	\N	{}
5897	Somantadine	\N	{}
5898	Somapacitan	\N	{}
5899	Somatosalm	\N	{}
5900	Somatorelin	\N	{}
5901	Somatostatin	\N	{}
5902	Somatrem	\N	{}
5903	Somatrogon	\N	{}
5904	Somatropin	\N	{}
5905	Somatropin pegol	\N	{}
5906	Somenopor	\N	{}
5907	Sometribove	\N	{}
5908	Sometripor	\N	{}
5909	Somidobove	\N	{}
5910	Somfasepor	\N	{}
5911	Sonedenoson	\N	{}
5912	Soneclosan	\N	{}
5913	Sonepiprazole	\N	{}
5914	Sonermin	\N	{}
5915	Sonidegib	\N	{}
5916	Sonolisib	\N	{}
5917	Sontuzumab	\N	{}
5918	Sopitazine	\N	{}
5919	Soproxil	\N	{}
5920	Sopromidine	\N	{}
5921	Soraprazan	\N	{}
5922	Sorafenib	\N	{}
5923	Sorbinicate	\N	{}
5924	Sorbinil	\N	{}
5925	Sorbitan laurate	\N	{}
5926	Sorbitan oleate	\N	{}
5927	Sorbitan palmitate	\N	{}
5928	Sorbitan sesquioleate	\N	{}
5929	Sorbitan stearate	\N	{}
5930	Sorbitan trioleate	\N	{}
5931	Sorbitan tristearate	\N	{}
5932	Soretolide	\N	{}
5933	Sorivudine	\N	{}
5934	Sornidipine	\N	{}
5935	Sotagliflozin	\N	{}
5936	Sotatercept	\N	{}
5937	Soterenol	\N	{}
5938	Sotirimod	\N	{}
5939	Sotrastaurin	\N	{}
5940	Sothrombomodulin alfa	\N	{}
5941	Sofalcone	\N	{}
5942	Sofigatran	\N	{}
5943	Sofinicline	\N	{}
5944	Sofituzumab vedotin	\N	{}
5945	Sofosbuvir	\N	{}
5946	Sofpironium bromide	\N	{}
5947	Soquinolol	\N	{}
5948	Spaglumic acid	\N	{}
5949	Spanlecortemlocel	\N	{}
5950	Sparsentan	\N	{}
5951	Sparsomycin	\N	{}
5952	Sparteine	\N	{}
5953	Sparfloxacin	\N	{}
5954	Sparfosic acid	\N	{}
5955	Spebrutinib	\N	{}
5956	Spectinomycin	\N	{}
5957	Spizofurone	\N	{}
5958	Spiclamine	\N	{}
5959	Spiclomazine	\N	{}
5960	Spiperone	\N	{}
5961	Spiradoline	\N	{}
5962	Spirazine	\N	{}
5963	Spiramide	\N	{}
5964	Spiramycin	\N	{}
5965	Spirapril	\N	{}
5966	Spiraprilat	\N	{}
5967	Spirgetine	\N	{}
5968	Spirendolol	\N	{}
5969	Spirilene	\N	{}
5970	Spiriprostil	\N	{}
5971	Spirogermanium	\N	{}
5972	Spiroglumide	\N	{}
5973	Spiroxasone	\N	{}
5974	Spiroxatrine	\N	{}
5975	Spiroxepin	\N	{}
5976	Spiromustine	\N	{}
5977	Spiroplatin	\N	{}
5978	Spirorenone	\N	{}
5979	Spirofylline	\N	{}
5980	Sprifermin	\N	{}
5981	Sprodiamide	\N	{}
5982	Stavudine	\N	{}
5983	Stacofylline	\N	{}
5984	Stallimycin	\N	{}
5985	Stamulumab	\N	{}
5986	Stannsoporfin	\N	{}
5987	Stanozolol	\N	{}
5988	Steaglate	\N	{}
5989	Stearylsulfamide	\N	{}
5990	Stevaladil	\N	{}
5991	Stenbolone	\N	{}
5992	Stepronin	\N	{}
5993	Stercuronium iodide	\N	{}
5994	Steffimycin	\N	{}
5995	Stibamine glucoside	\N	{}
5996	Stibosamine	\N	{}
5997	Stilbazium iodide	\N	{}
5998	Stilbamidine isetionate	\N	{}
5999	Stilonium iodide	\N	{}
6000	Styramate	\N	{}
6001	Stirimazole	\N	{}
6002	Stiripentol	\N	{}
6003	Stirocainide	\N	{}
6004	Streptovarycin	\N	{}
6005	Streptodornase	\N	{}
6006	Streptozocin	\N	{}
6007	Streptokinase	\N	{}
6008	Streptomycin	\N	{}
6009	Streptoniazid	\N	{}
6010	Strinoline	\N	{}
6011	Subathizone	\N	{}
6012	Subendazole	\N	{}
6013	Suvizumab	\N	{}
6014	Suvorexant	\N	{}
6015	Sugammadex	\N	{}
6016	Sudexanox	\N	{}
6017	Sudismase	\N	{}
6018	Sudoxicam	\N	{}
6019	Suclofenide	\N	{}
6020	Sucralox	\N	{}
6021	Sucralfate	\N	{}
6022	Sucrosofate	\N	{}
6023	Suxamethonium chloride	\N	{}
6024	Suxemerid	\N	{}
6025	Suxethonium chloride	\N	{}
6026	Suxibuzone	\N	{}
6027	Succimer	\N	{}
6028	Succinylsulfathiazole	\N	{}
6029	Succinobucol	\N	{}
6030	Succisulfone	\N	{}
6031	Sulazepam	\N	{}
6032	Sulazuril	\N	{}
6033	Sulamserod	\N	{}
6034	Sulesomab	\N	{}
6035	Suleparoid sodium	\N	{}
6036	Sulisatin	\N	{}
6037	Sulisobenzone	\N	{}
6038	Sulicrinat	\N	{}
6039	Sulindac	\N	{}
6040	Sulodexide	\N	{}
6041	Sulosemide	\N	{}
6042	Sulocarbilate	\N	{}
6043	Suloxifen	\N	{}
6044	Suloctidil	\N	{}
6045	Sulopenem	\N	{}
6046	Sulotroban	\N	{}
6047	Sulofenur	\N	{}
6048	Sulukast	\N	{}
6049	Sulbactam	\N	{}
6050	Sulbenicillin	\N	{}
6051	Sulbenox	\N	{}
6052	Sulbentine	\N	{}
6053	Sulbutiamine	\N	{}
6054	Sulverapride	\N	{}
6055	Sulglicotide	\N	{}
6056	Sulclamide	\N	{}
6057	Sulconazole	\N	{}
6058	Sulmazole	\N	{}
6059	Sulmarin	\N	{}
6060	Sulmepride	\N	{}
6061	Sulnidazole	\N	{}
6062	Sulpiride	\N	{}
6063	Sulprosal	\N	{}
6064	Sulprostone	\N	{}
6065	Sultamicillin	\N	{}
6066	Sultiame	\N	{}
6067	Sultosilic acid	\N	{}
6068	Sultopride	\N	{}
6069	Sultroponium	\N	{}
6070	Sulfabenz	\N	{}
6071	Sulfabenzamide	\N	{}
6072	Sulfaguanidine	\N	{}
6073	Sulfaguanole	\N	{}
6074	Sulfadiazine	\N	{}
6075	Sulfadiazine sodium	\N	{}
6076	Sulfadiasulfone sodium	\N	{}
6077	Sulfadicramide	\N	{}
6078	Sulfadimethoxine	\N	{}
6079	Sulfadimidine	\N	{}
6080	Sulfadoxine	\N	{}
6081	Sulfacarbamide	\N	{}
6082	Sulfaclozine	\N	{}
6083	Sulfaclomide	\N	{}
6084	Sulfaclorazole	\N	{}
6085	Sulfalene	\N	{}
6086	Sulfaloxic acid	\N	{}
6087	Sulfamazone	\N	{}
6088	Sulfamerazine	\N	{}
6089	Sulfamerazine sodium	\N	{}
6090	Sulfamethizole	\N	{}
6091	Sulfamethoxazole	\N	{}
6092	Sulfametoxydiazine	\N	{}
6093	Sulfamethoxypyridazine	\N	{}
6094	Sulfametomidine	\N	{}
6095	Sulfametrole	\N	{}
6096	Sulfamoxole	\N	{}
6097	Sulfamonomethoxine	\N	{}
6098	Sulfanilamide	\N	{}
6099	Sulfanitran	\N	{}
6100	Sulfaperin	\N	{}
6101	Sulfapyrazole	\N	{}
6102	Sulfapyridine	\N	{}
6103	Sulfaproxyline	\N	{}
6104	Sulfarsphenamine	\N	{}
6105	Sulfasalazine	\N	{}
6106	Sulfasymazine	\N	{}
6107	Sulfasomizole	\N	{}
6108	Sulfasuccinamide	\N	{}
6109	Sulfathiazole	\N	{}
6110	Sulfathiourea	\N	{}
6111	Sulfatolamide	\N	{}
6112	Sulfatrozole	\N	{}
6113	Sulfatroxazole	\N	{}
6114	Sulfaphenazole	\N	{}
6115	Sulfafurazole	\N	{}
6116	Sulfaquinoxaline	\N	{}
6117	Sulfachlorpyridazine	\N	{}
6118	Sulfachrysoidine	\N	{}
6119	Sulfacecole	\N	{}
6120	Sulfacetamide	\N	{}
6121	Sulfacitine	\N	{}
6122	Sulfaethidole	\N	{}
6123	Sulfisomidine	\N	{}
6124	Sulfinalol	\N	{}
6125	Sulfinpyrazone	\N	{}
6126	Sulfiram	\N	{}
6127	Sulfogaiacol	\N	{}
6128	Sulfomyxin	\N	{}
6129	Sulfonterol	\N	{}
6130	Sulforidazine	\N	{}
6131	Sumanirole	\N	{}
6132	Sumarotene	\N	{}
6133	Sumatriptan	\N	{}
6134	Sumacetamol	\N	{}
6135	Sumetizide	\N	{}
6136	Sunagrel	\N	{}
6137	Sunepitron	\N	{}
6138	Sunitinib	\N	{}
6139	Suncillin	\N	{}
6140	Supidimide	\N	{}
6141	Suplatast tosilate	\N	{}
6142	Suproclone	\N	{}
6143	Suprofen	\N	{}
6144	Suptavumab	\N	{}
6145	Suramin sodium	\N	{}
6146	Suricainide	\N	{}
6147	Suriclone	\N	{}
6148	Surinabant	\N	{}
6149	Suritozole	\N	{}
6150	Suronacrine	\N	{}
6151	Surotomycin	\N	{}
6152	Surfomer	\N	{}
6153	Susalimod	\N	{}
6154	Susoctocog alfa	\N	{}
6155	Sutezolid	\N	{}
6156	Sutilains	\N	{}
6157	Sufentanil	\N	{}
6158	Sufosfamide	\N	{}
6159	Sufotidine	\N	{}
6160	Sufugolix	\N	{}
6161	Sfericase	\N	{}
6162	Tabalumab	\N	{}
6163	Taberminogene vadenovec	\N	{}
6164	Tabilautide	\N	{}
6165	Tabimorelin	\N	{}
6166	Tavaborole	\N	{}
6167	Tavilermide	\N	{}
6168	Tavolixizumab	\N	{}
6169	Taglutimide	\N	{}
6170	Tagorizine	\N	{}
6171	Tadalafil	\N	{}
6172	Tadekinig alfa	\N	{}
6173	Tadocizumab	\N	{}
6174	Tazadolene	\N	{}
6175	Tazanolast	\N	{}
6176	Tazarotene	\N	{}
6177	Tazasubrate	\N	{}
6178	Tazemetostat	\N	{}
6179	Tazeprofen	\N	{}
6180	Taziprinone	\N	{}
6181	Tazifylline	\N	{}
6182	Tazobactam	\N	{}
6183	Tazolol	\N	{}
6184	Tazomeline	\N	{}
6185	Tasonermin	\N	{}
6186	Tasosartan	\N	{}
6187	Tazofelone	\N	{}
6188	Tacalcitol	\N	{}
6189	Tacapenem	\N	{}
6190	Taclamine	\N	{}
6191	Tacrine	\N	{}
6192	Tacrolimus	\N	{}
6193	Talabostat	\N	{}
6194	Talaglumetad	\N	{}
6195	Taladegib	\N	{}
6196	Talazoparib	\N	{}
6197	Talactoferrin alfa	\N	{}
6198	Talampanel	\N	{}
6199	Talampicillin	\N	{}
6200	Talaporfin	\N	{}
6201	Talarozole	\N	{}
6202	Talastine	\N	{}
6203	Talbutal	\N	{}
6204	Talviraline	\N	{}
6205	Taleranol	\N	{}
6206	Talibegron	\N	{}
6207	Taliglucerase alfa	\N	{}
6208	Thalidomide	\N	{}
6209	Talisomycin	\N	{}
6210	Talizumab	\N	{}
6211	Talimogene laherparepvec	\N	{}
6212	Talinexomer	\N	{}
6213	Talinolol	\N	{}
6214	Talipexole	\N	{}
6215	Tallimustine	\N	{}
6216	Talmapimod	\N	{}
6217	Talmetacin	\N	{}
6218	Talmetoprim	\N	{}
6219	Talnetant	\N	{}
6220	Talniflumate	\N	{}
6221	Talosalate	\N	{}
6222	Taloximine	\N	{}
6223	Talopram	\N	{}
6224	Talotrexin	\N	{}
6225	Talsaclidine	\N	{}
6226	Talsupram	\N	{}
6227	Taltirelin	\N	{}
6228	Taltobulin	\N	{}
6229	Taltrimide	\N	{}
6230	Tameridone	\N	{}
6231	Tameticillin	\N	{}
6232	Tametraline	\N	{}
6233	Tamibarotene	\N	{}
6234	Tamitinol	\N	{}
6235	Tamoxifen	\N	{}
6236	Tamolarizine	\N	{}
6237	Tampramine	\N	{}
6238	Tamsulosin	\N	{}
6239	Tamtuvetmab	\N	{}
6240	Tanaproget	\N	{}
6241	Tandamine	\N	{}
6242	Tandospirone	\N	{}
6243	Tandutinib	\N	{}
6244	Tanezumab	\N	{}
6245	Darexaban	\N	{}
6246	Taneptacogin alfa	\N	{}
6247	Tanespimycin	\N	{}
6248	Tanzisertib	\N	{}
6249	Taniplon	\N	{}
6250	Tanogitran	\N	{}
6251	Tanomastat	\N	{}
6252	Tanurmotide	\N	{}
6253	Tapentadol	\N	{}
6254	Taplitumomab paptox	\N	{}
6255	Taprenepag	\N	{}
6256	Taprizosin	\N	{}
6257	Taprostene	\N	{}
6258	Tarazepide	\N	{}
6259	Taranabant	\N	{}
6260	Tarafenacin	\N	{}
6261	Tarextumab	\N	{}
6262	Tarenflurbil	\N	{}
6263	Taribavirin	\N	{}
6264	Tariquidar	\N	{}
6265	Tarloxotinib bromide	\N	{}
6266	Taselisib	\N	{}
6267	Tasidotin	\N	{}
6268	Tasimelteon	\N	{}
6269	Tasisulam	\N	{}
6270	Taspoglutide	\N	{}
6271	Tasuldine	\N	{}
6272	Tasquinimod	\N	{}
6273	Taurine	\N	{}
6274	Taurolidine	\N	{}
6275	Tauromustine	\N	{}
6276	Tauroselcholic acid	\N	{}
6277	Taurosteine	\N	{}
6278	Taurultam	\N	{}
6279	Tafamidis	\N	{}
6280	Tafenoquine	\N	{}
6281	Tafluposide	\N	{}
6282	Tafluprost	\N	{}
6283	Tafoxiparin sodium	\N	{}
6284	Tacedinaline	\N	{}
6285	Thebacon	\N	{}
6286	Tebanicline	\N	{}
6287	Tebatizole	\N	{}
6288	Tebipenem pivoxil	\N	{}
6289	Tebutate	\N	{}
6290	Tebufelone	\N	{}
6291	Tebuquine	\N	{}
6292	Teverelix	\N	{}
6293	Tegaserod	\N	{}
6294	Tegafur	\N	{}
6295	Teglarinad chloride	\N	{}
6296	Teglicar	\N	{}
6297	Tegobuvir	\N	{}
6298	Tegoprazan	\N	{}
6299	Tedalinab	\N	{}
6300	Tedatioxetine	\N	{}
6301	Tedisamil	\N	{}
6302	Teduglutide	\N	{}
6303	Tesaglitazar	\N	{}
6304	Tezacaftor	\N	{}
6305	Tesamorelin	\N	{}
6306	Tezampanel	\N	{}
6307	Tezacitabine	\N	{}
6308	Tezepelumab	\N	{}
6309	Tesetaxel	\N	{}
6310	Tesicam	\N	{}
6311	Tesimide	\N	{}
6312	Tezosentan	\N	{}
6313	Tesofensine	\N	{}
6314	Teicoplanin	\N	{}
6315	Tecadenoson	\N	{}
6316	Tecalcet	\N	{}
6317	Tecarfarin	\N	{}
6318	Tecastemizole	\N	{}
6319	Teclozan	\N	{}
6320	Teclothiazide	\N	{}
6321	Tecovirimat	\N	{}
6322	Texacromil	\N	{}
6323	Telavancin	\N	{}
6324	Telaprevir	\N	{}
6325	Telapristone	\N	{}
6326	Telatinib	\N	{}
6327	Telbermin	\N	{}
6328	Telbivudine	\N	{}
6329	Telenzepine	\N	{}
6330	Telimomab aritox	\N	{}
6331	Telinavir	\N	{}
6332	Telisotuzumab	\N	{}
6333	Telisotuzumab vedotin	\N	{}
6334	Telithromycin	\N	{}
6335	Telcagepant	\N	{}
6336	Telmapitant	\N	{}
6337	Telmesteine	\N	{}
6338	Teloxantrone	\N	{}
6339	Telotristat	\N	{}
6340	Teludipine	\N	{}
6341	Temazepam	\N	{}
6342	Temanogrel	\N	{}
6343	Temarotene	\N	{}
6344	Tematropium metilsulfate	\N	{}
6345	Temafloxacin	\N	{}
6346	Temelastine	\N	{}
6347	Temefos	\N	{}
6348	Temiverine	\N	{}
6349	Temodox	\N	{}
6350	Temozolomide	\N	{}
6351	Temocapril	\N	{}
6352	Temocaprilat	\N	{}
6353	Temoporfin	\N	{}
6354	Temocillin	\N	{}
6355	Temsavir	\N	{}
6356	Temsirolimus	\N	{}
6357	Temurtide	\N	{}
6358	Thenalidine	\N	{}
6359	Tenalisib	\N	{}
6360	Tenamfetamine	\N	{}
6361	Tenapanor	\N	{}
6362	Tenatoprazole	\N	{}
6363	Tenatumomab	\N	{}
6364	Tendamistat	\N	{}
6365	Tenecteplase	\N	{}
6366	Teneligliptin	\N	{}
6367	Teneliximab	\N	{}
6368	Tenivastatin	\N	{}
6369	Tenidap	\N	{}
6370	Tenilapine	\N	{}
6371	Thenyldiamine	\N	{}
6372	Tenylidone	\N	{}
6373	Teniloxazine	\N	{}
6374	Tenilsetam	\N	{}
6375	Teniposide	\N	{}
6376	Tenifatecan	\N	{}
6377	Thenium closilate	\N	{}
6378	Tenoate	\N	{}
6379	Tenosiprol	\N	{}
6380	Tenoxicam	\N	{}
6381	Tenonitrozole	\N	{}
6382	Tenosal	\N	{}
6383	Tenofovir	\N	{}
6384	Tenofovir alafenamide	\N	{}
6385	Tenofovir exalidex	\N	{}
6386	Tenocyclidine	\N	{}
6387	Theodrenaline	\N	{}
6388	Teoclate	\N	{}
6389	Teopranitol	\N	{}
6390	Teoprolol	\N	{}
6391	Theophylline ephedrine	\N	{}
6392	Tepirindole	\N	{}
6393	Teplizumab	\N	{}
6394	Tepoxalin	\N	{}
6395	Tepotinib	\N	{}
6396	Teprenone	\N	{}
6397	Teprosilate	\N	{}
6398	Teprotide	\N	{}
6399	Teprotumumab	\N	{}
6400	Terameprocol	\N	{}
6401	Terbequinil	\N	{}
6402	Terbinafine	\N	{}
6403	Terbogrel	\N	{}
6404	Terbucromil	\N	{}
6405	Terbuprol	\N	{}
6406	Terbutaline	\N	{}
6407	Terbufibrol	\N	{}
6408	Terbuficin	\N	{}
6409	Terguride	\N	{}
6410	Terdecamycin	\N	{}
6411	Terestigmine	\N	{}
6412	Terizidone	\N	{}
6413	Terikalant	\N	{}
6414	Teriparatide	\N	{}
6415	Teriflunomide	\N	{}
6416	Terconazole	\N	{}
6417	Terlakiren	\N	{}
6418	Terlipressin	\N	{}
6419	Ternidazole	\N	{}
6420	Terodiline	\N	{}
6421	Teroxalene	\N	{}
6422	Teroxirone	\N	{}
6423	Terofenamate	\N	{}
6424	Tertatolol	\N	{}
6425	Tertomotide	\N	{}
6426	Terutroban	\N	{}
6427	Terfenadine	\N	{}
6428	Terflavoxate	\N	{}
6429	Terfluranol	\N	{}
6430	Terciprazine	\N	{}
6431	Tesevatinib	\N	{}
6432	Tesidolumab	\N	{}
6433	Tesmilifene	\N	{}
6434	Testolactone	\N	{}
6435	Testosterone	\N	{}
6436	Testosterone ketolaurate	\N	{}
6437	Tetomilast	\N	{}
6438	Tetrabarbital	\N	{}
6439	Tetrabenazine	\N	{}
6440	Tetradonium bromide	\N	{}
6441	Tetrazepam	\N	{}
6442	Tetrazolast	\N	{}
6443	Tetracaine	\N	{}
6444	Tetracosactide	\N	{}
6445	Tetraxetan	\N	{}
6446	Tetramethrin	\N	{}
6447	Tetramisole	\N	{}
6448	Tetracycline	\N	{}
6449	Tetridamine	\N	{}
6450	Tetryzoline	\N	{}
6451	Tetrylammonium bromide	\N	{}
6452	Tetriprofen	\N	{}
6453	Tetrodotoxin	\N	{}
6454	Tetroxoprim	\N	{}
6455	Tetronasin	\N	{}
6456	Tetrofosmin	\N	{}
6457	Tetroquinone	\N	{}
6458	Tefazoline	\N	{}
6459	Tefenperate	\N	{}
6460	Tefibazumab	\N	{}
6461	Tefinostat	\N	{}
6462	Tefludazine	\N	{}
6463	Teflurane	\N	{}
6464	Teflutixol	\N	{}
6465	Technetium (99mTc) apcitide	\N	{}
6466	Technetium (99mTc) bicisate	\N	{}
6467	Technetium (99mTc) nitridocade	\N	{}
6468	Technetium (99mTc) nofetumomab merpentan	\N	{}
6469	Technetium (99mTc) pintumomab	\N	{}
6470	Technetium (99mTc) sestamibi	\N	{}
6471	Technetium (99mTc) siboroxime	\N	{}
6599	Tinabinol	\N	{}
6600	Tinazoline	\N	{}
6472	Technetium (99mTc) teboroxime	\N	{}
6473	Technetium (99mTc) trofolastat chloride	\N	{}
6474	Technetium (99mTc) fanolesomab	\N	{}
6605	Tinofedrine	\N	{}
6475	Technetium (99mTc) furifosmin	\N	{}
6476	Teceleukin	\N	{}
6477	Tecemotide	\N	{}
6478	Tiabendazole	\N	{}
6479	Tiagabine	\N	{}
6480	Tiadenol	\N	{}
6481	Tiazesim	\N	{}
6482	Thiazinamium metilsulfate	\N	{}
6483	Thiazosulfone	\N	{}
6484	Tiazotic acid	\N	{}
6485	Tiazofurine	\N	{}
6486	Tiazuril	\N	{}
6487	Tiacrilast	\N	{}
6488	Thialbarbital	\N	{}
6489	Thiamazole	\N	{}
6490	Thiambutosine	\N	{}
6491	Tiamenidine	\N	{}
6492	Tiametonium iodide	\N	{}
6493	Tiamizide	\N	{}
6494	Thiamine	\N	{}
6495	Tiamiprine	\N	{}
6496	Tiamulin	\N	{}
6497	Thiamphenicol	\N	{}
6498	Tianafac	\N	{}
6499	Tianeptine	\N	{}
6500	Tiapamil	\N	{}
6501	Tiapirinol	\N	{}
6502	Tiapride	\N	{}
6503	Tiaprost	\N	{}
6504	Tiaprofenic acid	\N	{}
6505	Tiaramide	\N	{}
6506	Tiafibrate	\N	{}
6507	Thiacetarsamide sodium	\N	{}
6508	Tibalosin	\N	{}
6509	Tybamate	\N	{}
6510	Tibeglisene	\N	{}
6511	Tibezonium iodide	\N	{}
6512	Tibenelast	\N	{}
6513	Tibenzate	\N	{}
6514	Tibolone	\N	{}
6515	Tibric acid	\N	{}
6516	Tibrofan	\N	{}
6517	Tivanidazole	\N	{}
6518	Tivantinib	\N	{}
6519	Tivirapine	\N	{}
6520	Tiviciclovir	\N	{}
6521	Tivozanib	\N	{}
6522	Tigapotide	\N	{}
6523	Tigatuzumab	\N	{}
6524	Thihexinol methylbromide	\N	{}
6525	Tigemonam	\N	{}
6526	Tigestol	\N	{}
6527	Tigecycline	\N	{}
6528	Tigloidine	\N	{}
6529	Tideglusib	\N	{}
6530	Tidembersat	\N	{}
6531	Tidiacic	\N	{}
6532	Tiemonium iodide	\N	{}
6533	Tienilic acid	\N	{}
6534	Tienocarbine	\N	{}
6535	Tienoxolol	\N	{}
6536	Tienopramine	\N	{}
6537	Tizabrin	\N	{}
6538	Tizanidine	\N	{}
6539	Tisocalcitate	\N	{}
6540	Tisoquone	\N	{}
6541	Tisocromide	\N	{}
6542	Tizolemide	\N	{}
6543	Tizoprolic acid	\N	{}
6544	Tisopurine	\N	{}
6545	Tisotumab	\N	{}
6546	Tisotumab vedotin	\N	{}
6547	Ticabesone	\N	{}
6548	Ticagrelor	\N	{}
6549	Ticalopride	\N	{}
6550	Ticarbodine	\N	{}
6551	Ticarcillin	\N	{}
6552	Tiqueside	\N	{}
6553	Ticlatone	\N	{}
6554	Ticlopidine	\N	{}
6555	Ticolubant	\N	{}
6556	Tixadil	\N	{}
6557	Tixanox	\N	{}
6558	Tixocortol	\N	{}
6559	Tilactase	\N	{}
6560	Tilapertin	\N	{}
6561	Tilarginine	\N	{}
6562	Tilbroquinol	\N	{}
6563	Tylvalosin	\N	{}
6564	Tildipirosin	\N	{}
6565	Tildrakizumab	\N	{}
6566	Tiletamine	\N	{}
6567	Tilivapram	\N	{}
6568	Tilidine	\N	{}
6569	Tilisolol	\N	{}
6570	Tiliquinol	\N	{}
6571	Tilmacoxib	\N	{}
6572	Tilmicosin	\N	{}
6573	Tilnoprofen arbamel	\N	{}
6574	Tilozepine	\N	{}
6575	Tylosin	\N	{}
6576	Tyloxapol	\N	{}
6577	Tilomisole	\N	{}
6578	Tilorone	\N	{}
6579	Tilsuprost	\N	{}
6580	Tiludronic acid	\N	{}
6581	Thymalfasin	\N	{}
6582	Timegadine	\N	{}
6583	Timelotem	\N	{}
6584	Timepidium bromide	\N	{}
6585	Timefurone	\N	{}
6586	Timiperone	\N	{}
6587	Timirdine	\N	{}
6588	Timcodar	\N	{}
6589	Timobesone	\N	{}
6590	Thymocartin	\N	{}
6591	Thymoctonan	\N	{}
6592	Timolumab	\N	{}
6593	Timonacic	\N	{}
6594	Thymopentin	\N	{}
6595	Timoprazole	\N	{}
6596	Thymostimulin	\N	{}
6597	Thymotrinan	\N	{}
6598	Timofibrate	\N	{}
6601	Tinzaparin sodium	\N	{}
6602	Tinidazole	\N	{}
6603	Tinisulpride	\N	{}
6604	Tinoridine	\N	{}
6606	Thioacetazone	\N	{}
6607	Thiohexamide	\N	{}
6608	Tioguanine	\N	{}
6609	Tiodazosin	\N	{}
6610	Thiodiglycol	\N	{}
6611	Tiodonium chloride	\N	{}
6612	Tiocarlide	\N	{}
6613	Tioclomarol	\N	{}
6614	Thiocolchicoside	\N	{}
6615	Tioconazole	\N	{}
6616	Tioxamast	\N	{}
6617	Tioxaprofen	\N	{}
6618	Tioxacin	\N	{}
6619	Tioxidazole	\N	{}
6620	Tioxolone	\N	{}
6621	Tioctilate	\N	{}
6622	Tiomergine	\N	{}
6623	Thiomersal	\N	{}
6624	Tiomesterone	\N	{}
6625	Tiomolibdic acid	\N	{}
6626	Thiopental sodium	\N	{}
6627	Tioperidone	\N	{}
6628	Tiopinac	\N	{}
6629	Tiopronin	\N	{}
6630	Thiopropazate	\N	{}
6631	Tiopropamine	\N	{}
6632	Thioproperazine	\N	{}
6633	Thioridazine	\N	{}
6634	Tiosalan	\N	{}
6635	Tiospirone	\N	{}
6636	Thiotepa	\N	{}
6637	Thiotetrabarbital	\N	{}
6638	Tiotidine	\N	{}
6639	Tiotixene	\N	{}
6640	Tiotropium bromide	\N	{}
6641	Thiofuradene	\N	{}
6642	Tipapkinogene sovacivec	\N	{}
6643	Tipelukast	\N	{}
6644	Tipentosin	\N	{}
6645	Tipepidine	\N	{}
6646	Tipetropium bromide	\N	{}
6647	Tipindole	\N	{}
6648	Tipiracil	\N	{}
6649	Tipifarnib	\N	{}
6650	Tiplasinin	\N	{}
6651	Tiplimotide	\N	{}
6652	Tipranavir	\N	{}
6653	Tipredane	\N	{}
6654	Tiprelestat	\N	{}
6655	Tiprenolol	\N	{}
6656	Tiprinast	\N	{}
6657	Tipropidil	\N	{}
6658	Tiprostanide	\N	{}
6659	Tiprotimod	\N	{}
6660	Tirabrutinib	\N	{}
6661	Thiram	\N	{}
6662	Tirapazamine	\N	{}
6663	Tirasemtiv	\N	{}
6664	Tiratricol	\N	{}
6665	Tiracizine	\N	{}
6666	Tirilazad	\N	{}
6667	Thyroglobulin	\N	{}
6668	Tyrosine	\N	{}
6669	Tyromedan	\N	{}
6670	Tiropramide	\N	{}
6671	Thyropropic acid	\N	{}
6672	Tyrothricin	\N	{}
6673	Thyrotrophin	\N	{}
6674	Thyrotropin alfa	\N	{}
6675	Tirofiban	\N	{}
6676	Tifacogin	\N	{}
6677	Tifemoxone	\N	{}
6678	Tifenazoxide	\N	{}
6679	Tifenamil	\N	{}
6680	Tifencillin	\N	{}
6681	Tiflamizole	\N	{}
6682	Tiflorex	\N	{}
6683	Tifluadom	\N	{}
6684	Tiflucarbine	\N	{}
6685	Tiformin	\N	{}
6686	Tifuvirtide	\N	{}
6687	Tifurac	\N	{}
6688	Tiquizium bromide	\N	{}
6689	Tiquinamide	\N	{}
6690	Thiethylperazine	\N	{}
6691	Tobicillin	\N	{}
6692	Toborinone	\N	{}
6693	Tobramycin	\N	{}
6694	Tobuterol	\N	{}
6695	Tovetumab	\N	{}
6696	Todralazine	\N	{}
6697	Tosagestin	\N	{}
6698	Tozadenant	\N	{}
6699	Tosactide	\N	{}
6700	Tozalinone	\N	{}
6701	Tozasertib	\N	{}
6702	Tosilate	\N	{}
6703	Tosylchloramide sodium	\N	{}
6704	Tosifen	\N	{}
6705	Tozuleristide	\N	{}
6706	Tocainide	\N	{}
6707	Tocamphyl	\N	{}
6708	Tocladesine	\N	{}
6709	Tocofenoxate	\N	{}
6710	Tocofibrate	\N	{}
6711	Tolazamide	\N	{}
6712	Tolazoline	\N	{}
6713	Tolamolol	\N	{}
6714	Tolafentrine	\N	{}
6715	Tolboxane	\N	{}
6716	Tolbutamide	\N	{}
6717	Tolvaptan	\N	{}
6718	Tolgabide	\N	{}
6719	Toldimfos	\N	{}
6720	Tolevamer	\N	{}
6721	Tolycaine	\N	{}
6722	Tolimidone	\N	{}
6723	Tolindate	\N	{}
6724	Toliodium chloride	\N	{}
6725	Toliprolol	\N	{}
6726	Tolcapone	\N	{}
6727	Tolmesoxide	\N	{}
6728	Tolmetin	\N	{}
6729	Tolnapersine	\N	{}
6730	Tolnaftate	\N	{}
6731	Tolnidamine	\N	{}
6732	Toloconium metilsulfate	\N	{}
6733	Toloxatone	\N	{}
6734	Toloxychlorinol	\N	{}
6735	Tolonidine	\N	{}
6736	Tolonium chloride	\N	{}
6737	Tolpadol	\N	{}
6738	Tolpentamide	\N	{}
6739	Tolperisone	\N	{}
6740	Tolpiprazole	\N	{}
6741	Tolpyrramide	\N	{}
6742	Tolpovidone (131I)	\N	{}
6743	Tolpronine	\N	{}
6744	Tolpropamine	\N	{}
6745	Tolrestat	\N	{}
6746	Tolterodine	\N	{}
6747	Toltrazuril	\N	{}
6748	Tolufazepam	\N	{}
6749	Tolfamide	\N	{}
6750	Tolfenamic acid	\N	{}
6751	Tolquinzole	\N	{}
6752	Tolciclate	\N	{}
6753	Tomeglovir	\N	{}
6754	Tomelukast	\N	{}
6755	Tomicorat	\N	{}
6756	Tomoglumide	\N	{}
6757	Tomoxiprole	\N	{}
6758	Tomopenem	\N	{}
6759	Tonabacase	\N	{}
6760	Tonabersat	\N	{}
6761	Tonazocine	\N	{}
6762	Tonapofylline	\N	{}
6763	Thonzylamine	\N	{}
6764	Tonzonium bromide	\N	{}
6765	Tonogenconcel	\N	{}
6766	Topixantrone	\N	{}
6767	Topilutamide	\N	{}
6768	Topiramate	\N	{}
6769	Topiroxostat	\N	{}
6770	Topotecan	\N	{}
6771	Toprilidine	\N	{}
6772	Topsalysin	\N	{}
6773	Topterone	\N	{}
6774	Toralizumab	\N	{}
6775	Torapsel	\N	{}
6776	Torbafylline	\N	{}
6777	Tedizolid	\N	{}
6778	Toremifene	\N	{}
6779	Toreforant	\N	{}
6780	Toripristone	\N	{}
6781	Torcetrapib	\N	{}
6782	Torcitabine	\N	{}
6783	Tosatoxumab	\N	{}
6784	Tosedostat	\N	{}
6785	Tositumomab	\N	{}
6786	Tosulur	\N	{}
6787	Tosufloxacin	\N	{}
6788	Totrombopag	\N	{}
6789	Tofacitinib	\N	{}
6790	Tofenacin	\N	{}
6791	Tofesilate	\N	{}
6792	Tofetridine	\N	{}
6793	Tofisopam	\N	{}
6794	Tofimilast	\N	{}
6795	Tofogliflozin	\N	{}
6796	Toquizine	\N	{}
6797	Toceranib	\N	{}
6798	Tocilizumab	\N	{}
6799	Trabedersen	\N	{}
6800	Trabectedin	\N	{}
6801	Trabodenoson	\N	{}
6802	Traboxopine	\N	{}
6803	Travoprost	\N	{}
6804	Tradecamide	\N	{}
6805	Tradipitant	\N	{}
6806	Trazitiline	\N	{}
6807	Trazium esilate	\N	{}
6808	Trazodone	\N	{}
6809	Trazolopride	\N	{}
6810	Tracazolate	\N	{}
6811	Traxanox	\N	{}
6812	Traxoprodil	\N	{}
6813	Tralokinumab	\N	{}
6814	Tralonide	\N	{}
6815	Tramadol	\N	{}
6816	Tramazoline	\N	{}
6817	Trametinib	\N	{}
6818	Tramiprosate	\N	{}
6819	Trandolaprilat	\N	{}
6820	Tranexamic acid	\N	{}
6821	Tranilast	\N	{}
6822	Tranylcypromine	\N	{}
6823	Transcainide	\N	{}
6824	Transcrocetin	\N	{}
6825	Transferrin aldifitox	\N	{}
6826	Trantelinium bromide	\N	{}
6827	Trapencaine	\N	{}
6828	Trapidil	\N	{}
6829	Trastuzumab	\N	{}
6830	Trastuzumab duocarmazine	\N	{}
6831	Trastuzumab emtansine	\N	{}
6832	Trafermin	\N	{}
6833	Trebananib	\N	{}
6834	Trebenzomine	\N	{}
6835	Trevogrumab	\N	{}
6836	Tregalizumab	\N	{}
6837	Trecadrine	\N	{}
6838	Trecovirsen	\N	{}
6839	Trelagliptin	\N	{}
6840	Trelanserin	\N	{}
6841	Trelnarizine	\N	{}
6842	Treloxinate	\N	{}
6843	Tremacamra	\N	{}
6844	Tremelimumab	\N	{}
6845	Trempamotide	\N	{}
6846	Trenbolone	\N	{}
6847	Trengestone	\N	{}
6848	Trenizine	\N	{}
6849	Trenonacog alfa	\N	{}
6850	Threonine	\N	{}
6851	Treosulfan	\N	{}
6852	Trepibutone	\N	{}
6853	Trepipam	\N	{}
6854	Trepirium iodide	\N	{}
6855	Treprostinil	\N	{}
6856	Treptilamine	\N	{}
6857	Tresperimus	\N	{}
6858	Trestolone	\N	{}
6859	Tretazicar	\N	{}
6860	Tretamine	\N	{}
6861	Trethinium tosilate	\N	{}
6862	Tretinoin	\N	{}
6863	Tretinoin tocoferil	\N	{}
6864	Trethocanic acid	\N	{}
6865	Tretoquinol	\N	{}
6866	Trefentanil	\N	{}
6867	Trequinsin	\N	{}
6868	Trecetilide	\N	{}
6869	Triaziquone	\N	{}
6870	Triazolam	\N	{}
6871	Triampyzine	\N	{}
6872	Triamcinolone	\N	{}
6873	Triamcinolone benetonide	\N	{}
6874	Triamcinolone hexacetonide	\N	{}
6875	Triamcinolone furetonide	\N	{}
6876	Triafungin	\N	{}
6877	Triacetin	\N	{}
6878	Tribendilol	\N	{}
6879	Tribenoside	\N	{}
6880	Tribromsalan	\N	{}
6881	Tribuzone	\N	{}
6882	Trigevolol	\N	{}
6883	Trihexyphenidyl	\N	{}
6884	Tridecactide	\N	{}
6885	Tridihexethyl iodide	\N	{}
6886	Tridolgosir	\N	{}
6887	Trientine	\N	{}
6888	Trizoxime	\N	{}
6889	Triclabendazole	\N	{}
6890	Triclazate	\N	{}
6891	Triclacetamol	\N	{}
6892	Triclobisonium chloride	\N	{}
6893	Triclodazol	\N	{}
6894	Triclosan	\N	{}
6895	Triclocarban	\N	{}
6896	Triclonide	\N	{}
6897	Triclofenate	\N	{}
6898	Triclofenol piperazine	\N	{}
6899	Triclofylline	\N	{}
6900	Triclofos	\N	{}
6901	Tricosactide	\N	{}
6902	Trixolane	\N	{}
6903	Triletide	\N	{}
6904	Trilostane	\N	{}
6905	Trimazosin	\N	{}
6906	Trimebutine	\N	{}
6907	Trimegestone	\N	{}
6908	Trimedoxime bromide	\N	{}
6909	Trimecaine	\N	{}
6910	Trimexiline	\N	{}
6911	Trimeperidine	\N	{}
6912	Trimethadione	\N	{}
6913	Trimetazidine	\N	{}
6914	Trimetamide	\N	{}
6915	Trimetaphan camsilate	\N	{}
6916	Trimethidinium methosulfate	\N	{}
6917	Trimethobenzamide	\N	{}
6918	Trimetozine	\N	{}
6919	Trimethoprim	\N	{}
6920	Trimetrexate	\N	{}
6921	Trimipramine	\N	{}
6922	Trimoxamine	\N	{}
6923	Trimoprostil	\N	{}
6924	Trioxysalen	\N	{}
6925	Trioxifene	\N	{}
6926	Tripalmitin	\N	{}
6927	Tripamide	\N	{}
6928	Triparanol	\N	{}
6929	Tryparsamide	\N	{}
6930	Tripelennamine	\N	{}
6931	Triplatin tetranitrate	\N	{}
6932	Triprolidine	\N	{}
6933	Triptorelin	\N	{}
6934	Tryptophan	\N	{}
6935	Tritiozine	\N	{}
6936	Tritoqualine	\N	{}
6937	Trifarotene	\N	{}
6938	Trifezolac	\N	{}
6939	Trifenagrel	\N	{}
6940	Triflocin	\N	{}
6941	Triflubazam	\N	{}
6942	Triflumidate	\N	{}
6943	Trifluomeprazine	\N	{}
6944	Trifluoperazine	\N	{}
6945	Trifluperidol	\N	{}
6946	Triflupromazine	\N	{}
6947	Trifluridine	\N	{}
6948	Triflusal	\N	{}
6949	Triflutate	\N	{}
6950	Trifosmin	\N	{}
6951	Trichlormethiazide	\N	{}
6952	Trichlormethine	\N	{}
6953	Trichloroethylene	\N	{}
6954	Tricyclamol chloride	\N	{}
6955	Triciribine	\N	{}
6956	Trovafloxacin	\N	{}
6957	Trovirdine	\N	{}
6958	Troglitazone	\N	{}
6959	Trodusquemine	\N	{}
6960	Troclosene potassium	\N	{}
6961	Troxacitabine	\N	{}
6962	Troxerutin	\N	{}
6963	Troxipide	\N	{}
6964	Troxypyrrolium tosilate	\N	{}
6965	Troxolamide	\N	{}
6966	Troxonium tosilate	\N	{}
6967	Troxundate	\N	{}
6968	Trolamine	\N	{}
6969	Troleandomycin	\N	{}
6970	Trolnitrate	\N	{}
6971	Tromantadine	\N	{}
6972	Thrombin	\N	{}
6973	Thrombin alfa	\N	{}
6974	Thrombomodulin alfa	\N	{}
6975	Trometamol	\N	{}
6976	Tropabazate	\N	{}
6977	Tropanserin	\N	{}
6978	Tropantiol	\N	{}
6979	Tropapride	\N	{}
6980	Tropatepine	\N	{}
6981	Tropenziline bromide	\N	{}
6982	Tropigline	\N	{}
6983	Tropicamide	\N	{}
6984	Tropirine	\N	{}
6985	Tropisetron	\N	{}
6986	Troplasminogen alfa	\N	{}
6987	Tropodifene	\N	{}
6988	Trospectomycin	\N	{}
6989	Trospium chloride	\N	{}
6990	Trofinetide	\N	{}
6991	Trofosfamide	\N	{}
6992	Troquidazole	\N	{}
6993	Trocimine	\N	{}
6994	Truxicurium iodide	\N	{}
6995	Truxipicurium iodide	\N	{}
6996	Tuaminoheptane	\N	{}
6997	Tubocurarine chloride	\N	{}
6998	Tubulozole	\N	{}
6999	Tuvatidine	\N	{}
7000	Tuvirumab	\N	{}
7001	Tucaresol	\N	{}
7002	Tucatinib	\N	{}
7003	Tuclazepam	\N	{}
7004	Tucotuzumab celmoleukin	\N	{}
7005	Tulathromycin	\N	{}
7006	Tulobuterol	\N	{}
7007	Tulopafant	\N	{}
7008	Turoctocog alfa	\N	{}
7009	Turoctocog alfa pegol	\N	{}
7010	Turosteride	\N	{}
7011	Turofexorate isopropyl	\N	{}
7012	Tucidinostat	\N	{}
7013	Ubenimex	\N	{}
7014	Ubidecarenone	\N	{}
7015	Ubisindine	\N	{}
7016	Ublituximab	\N	{}
7017	Ubrogepant	\N	{}
7018	Udenafil	\N	{}
7019	Ularitide	\N	{}
7020	Uldazepam	\N	{}
7021	Ulixertinib	\N	{}
7022	Ulimorelin	\N	{}
7023	Ulinastatin	\N	{}
7024	Ulipristal	\N	{}
7025	Ulifloxacin	\N	{}
7026	Ulobetasol	\N	{}
7027	Ulodesine	\N	{}
7028	Ulocuplumab	\N	{}
7029	Umeclidinium bromide	\N	{}
7030	Umespirone	\N	{}
7031	Umirolimus	\N	{}
7032	Umifenovir	\N	{}
7033	Unoprostone	\N	{}
7034	Upadacitinib	\N	{}
7035	Upamostat	\N	{}
7036	Upenazime	\N	{}
7037	Upidosin	\N	{}
7038	Uprifosbuvir	\N	{}
7039	Uprosertib	\N	{}
7040	Uramustine	\N	{}
7041	Urapidil	\N	{}
7042	Uredepa	\N	{}
7043	Uredofos	\N	{}
7044	Urelumab	\N	{}
7045	Urethane	\N	{}
7046	Urefibrate	\N	{}
7047	Uridine triacetate	\N	{}
7048	Urokinase	\N	{}
7049	Urokinase alfa	\N	{}
7050	Urofollitropin	\N	{}
7051	Ursodeoxycholic acid	\N	{}
7052	Ursulcholic acid	\N	{}
7053	Urtoxazumab	\N	{}
7054	Usistapide	\N	{}
7055	Ustekinumab	\N	{}
7056	Utibapril	\N	{}
7057	Utibaprilat	\N	{}
7058	Utomilumab	\N	{}
7059	Ufenamate	\N	{}
7060	Ufiprazole	\N	{}
7061	Fabesetron	\N	{}
7062	Fabomotizole	\N	{}
7063	Favipiravir	\N	{}
7064	Fadolmidine	\N	{}
7065	Fadrozole	\N	{}
7066	Fazadinium bromide	\N	{}
7067	Fazarabine	\N	{}
7068	Fasidotril	\N	{}
7069	Fasiplon	\N	{}
7070	Fasitibant chloride	\N	{}
7071	Fasobegron	\N	{}
7072	Fasoracetam	\N	{}
7073	Fasudil	\N	{}
7074	Faxeladol	\N	{}
7075	Faldaprevir	\N	{}
7076	Falecalcitriol	\N	{}
7077	Falintolol	\N	{}
7078	Falipamil	\N	{}
7079	Falnidamol	\N	{}
7080	Famiraprinium chloride	\N	{}
7081	Famotidine	\N	{}
7082	Famotine	\N	{}
7083	Fampridine	\N	{}
7084	Fampronil	\N	{}
7085	Famprofazone	\N	{}
7086	Famciclovir	\N	{}
7087	Fananserin	\N	{}
7088	Fanapanel	\N	{}
7089	Fandosentan	\N	{}
7090	Fandofloxacin	\N	{}
7091	Fanetizole	\N	{}
7092	Fantofarone	\N	{}
7093	Fantridone	\N	{}
7094	Phanquinone	\N	{}
7095	Faralimomab	\N	{}
7096	Farampator	\N	{}
7097	Farglitazar	\N	{}
7098	Farletuzumab	\N	{}
7099	Farnesil	\N	{}
7100	Faropenem	\N	{}
7101	Fasiglifam	\N	{}
7102	Fasinumab	\N	{}
7103	Facinicline	\N	{}
7104	Febantel	\N	{}
7105	Febarbamate	\N	{}
7106	Febuverine	\N	{}
7107	Febuxostat	\N	{}
7108	Febuprol	\N	{}
7109	Fevipiprant	\N	{}
7110	Fedovapagon	\N	{}
7111	Fedotozine	\N	{}
7112	Fedratinib	\N	{}
7113	Fedrilate	\N	{}
7114	Fezakinumab	\N	{}
7115	Fezatione	\N	{}
7116	Fezolamine	\N	{}
7117	Fezolinetant	\N	{}
7118	Fesoterodine	\N	{}
7119	Feclemine	\N	{}
7120	Feclobuzone	\N	{}
7121	Fexapotide	\N	{}
7122	Fexicaine	\N	{}
7123	Fexinidazole	\N	{}
7124	Fexofenadine	\N	{}
7125	Felbamate	\N	{}
7126	Felbinac	\N	{}
7127	Felvizumab	\N	{}
7128	Felipyrine	\N	{}
7129	Felypressin	\N	{}
7130	Feloprentan	\N	{}
7131	Femoxetine	\N	{}
7132	Fenabutene	\N	{}
7133	Phenaglycodol	\N	{}
7134	Fenadiazole	\N	{}
7135	Phenadoxone	\N	{}
7136	Phenazone	\N	{}
7137	Phenazopyridine	\N	{}
7138	Phenazocine	\N	{}
7139	Phenacaine	\N	{}
7140	Fenaclon	\N	{}
7141	Phenactropinium chloride	\N	{}
7142	Fenalamide	\N	{}
7143	Fenalcomine	\N	{}
7144	Phenamazoline	\N	{}
7145	Fenamisal	\N	{}
7146	Fenamifuril	\N	{}
7147	Fenamole	\N	{}
7148	Phenampromide	\N	{}
7149	Fenaperone	\N	{}
7150	Phenarsone sulfoxylate	\N	{}
7151	Fenaftic acid	\N	{}
7152	Phenacemide	\N	{}
7153	Phenacetin	\N	{}
7154	Fenacetinol	\N	{}
7155	Fenbendazole	\N	{}
7156	Fenbenicillin	\N	{}
7157	Fenbutrazate	\N	{}
7158	Fenbufen	\N	{}
7159	Fengabine	\N	{}
7160	Fenharmane	\N	{}
7161	Phenglutarimide	\N	{}
7162	Fendizoate	\N	{}
7163	Fendiline	\N	{}
7164	Phendimetrazine	\N	{}
7165	Fendosal	\N	{}
7166	Phenelzine	\N	{}
7167	Pheneridine	\N	{}
7168	Feneritrol	\N	{}
7169	Fenestrel	\N	{}
7170	Fenethazine	\N	{}
7171	Fenetylline	\N	{}
7172	Pheneticillin	\N	{}
7173	Fenetradil	\N	{}
7174	Pheneturide	\N	{}
7175	Fenisorex	\N	{}
7176	Phenicarbazide	\N	{}
7177	Phenylalanine	\N	{}
7178	Phenylbutazone	\N	{}
7179	Phenylmercuric borate	\N	{}
7180	Phenylpropanolamine	\N	{}
7181	Phenyltoloxamine	\N	{}
7182	Phenylephrine	\N	{}
7183	Fenimide	\N	{}
7184	Phenindamine	\N	{}
7185	Phenindione	\N	{}
7186	Feniodium chloride	\N	{}
7187	Pheniodol sodium	\N	{}
7188	Fenipentol	\N	{}
7189	Pheniprazine	\N	{}
7190	Fenyramidol	\N	{}
7191	Pheniramine	\N	{}
7192	Phenyracillin	\N	{}
7193	Fenyripol	\N	{}
7194	Fenirofibrate	\N	{}
7195	Phenythilone	\N	{}
7196	Phenytoin	\N	{}
7197	Fencamfamin	\N	{}
7198	Fencarbamide	\N	{}
7199	Fenclexonium metilsulfate	\N	{}
7200	Fenclozic acid	\N	{}
7201	Fenclonine	\N	{}
7202	Fenclorac	\N	{}
7203	Fenclofenac	\N	{}
7204	Fenclofos	\N	{}
7205	Fenleuton	\N	{}
7206	Fenmetozole	\N	{}
7207	Phenmetrazine	\N	{}
7208	Fenmetramide	\N	{}
7209	Fenobam	\N	{}
7210	Phenobarbital	\N	{}
7211	Phenobarbital sodium	\N	{}
7212	Phenobutiodil	\N	{}
7213	Fenoverine	\N	{}
7214	Fenozolone	\N	{}
7215	Fenoxazoline	\N	{}
7216	Fenoxedil	\N	{}
7217	Phenoxybenzamine	\N	{}
7218	Phenoxymethylpenicillin	\N	{}
7219	Fenoxypropazine	\N	{}
7220	Fenoctimine	\N	{}
7221	Fenoldopam	\N	{}
7222	Phenolphthalein	\N	{}
7223	Phenomorphan	\N	{}
7224	Phenoperidine	\N	{}
7225	Fenoprofen	\N	{}
7226	Fenoterol	\N	{}
7227	Phenothiazine	\N	{}
7228	Phenothrin	\N	{}
7229	Fenofibrate	\N	{}
7230	Fenocinol	\N	{}
7231	Fenpentadiol	\N	{}
7232	Fenperate	\N	{}
7233	Fenpiverinium bromide	\N	{}
7234	Fenpipalone	\N	{}
7235	Fenpipramide	\N	{}
7236	Fenpiprane	\N	{}
7237	Fenprinast	\N	{}
7238	Phenprobamate	\N	{}
7239	Phenprocoumon	\N	{}
7240	Phenpromethamine	\N	{}
7241	Fenproporex	\N	{}
7242	Fenprostalene	\N	{}
7243	Fenretinide	\N	{}
7244	Fenspiride	\N	{}
7245	Phensuximide	\N	{}
7246	Fentanyl	\N	{}
7247	Phentermine	\N	{}
7248	Fentiazac	\N	{}
7249	Fenticlor	\N	{}
7250	Fenticonazole	\N	{}
7251	Phentolamine	\N	{}
7252	Fentonium bromide	\N	{}
7253	Fenflumizol	\N	{}
7254	Fenfluramine	\N	{}
7255	Fenfluthrin	\N	{}
7256	Phenformin	\N	{}
7257	Fenquizone	\N	{}
7258	Fencibutirol	\N	{}
7259	Phencyclidine	\N	{}
7260	Fepentolic acid	\N	{}
7261	Fepitrizol	\N	{}
7262	Fepradinol	\N	{}
7263	Feprazone	\N	{}
7264	Feprosidnine	\N	{}
7265	Fepromide	\N	{}
7266	Fermagate	\N	{}
7267	Ferpifosate sodium	\N	{}
7268	Ferric fructose	\N	{}
7269	Ferropolimaler	\N	{}
7270	Ferrotrenine	\N	{}
7271	Ferroquine	\N	{}
7272	Ferrocholinate	\N	{}
7273	Fertirelin	\N	{}
7274	Phetharbital	\N	{}
7275	Fetoxilate	\N	{}
7276	Fialuridine	\N	{}
7277	Fiacitabine	\N	{}
7278	Fiboflapon	\N	{}
7279	Fibracillin	\N	{}
7280	Fibrin	\N	{}
7281	Fibrinogen (125I)	\N	{}
7282	Fibrinolysin (human)	\N	{}
7283	Figitumumab	\N	{}
7284	Figopitant	\N	{}
7285	Fidaxomicin	\N	{}
7286	Fidarestat	\N	{}
7287	Fidexaban	\N	{}
7288	Fiduxosin	\N	{}
7289	Ficlatuzumab	\N	{}
7290	Filaminast	\N	{}
7291	Filanesib	\N	{}
7292	Filgotinib	\N	{}
7293	Filgrastim	\N	{}
7294	Filenadol	\N	{}
7295	Filibuvir	\N	{}
7296	Filipin	\N	{}
7297	Filorexant	\N	{}
7298	Filociclovir	\N	{}
7299	Fimaporfin	\N	{}
7300	Fimasartan	\N	{}
7301	Finasteride	\N	{}
7302	Finafloxacin	\N	{}
7303	Fingolimod	\N	{}
7304	Finerenone	\N	{}
7305	Finrozole	\N	{}
7306	Fipamezole	\N	{}
7307	Fipexide	\N	{}
7308	Firategrast	\N	{}
7309	Firivumab	\N	{}
7310	Firocoxib	\N	{}
7311	Firtecan peglumer	\N	{}
7312	Firtecan pegol	\N	{}
7313	Fispemifene	\N	{}
7314	Fytic acid	\N	{}
7315	Phytomenadione	\N	{}
7316	Phytonadiol sodium diphosphate	\N	{}
7317	Fitusiran	\N	{}
7318	Flavamine	\N	{}
7319	Flavodilol	\N	{}
7320	Flavodic acid	\N	{}
7321	Flavoxate	\N	{}
7322	Flazalone	\N	{}
7323	Flamenol	\N	{}
7324	Flanvotumab	\N	{}
7325	Flezelastine	\N	{}
7326	Flesinoxan	\N	{}
7327	Flerobuterol	\N	{}
7328	Fleroxacin	\N	{}
7329	Flestolol	\N	{}
7330	Fletazepam	\N	{}
7331	Fletikumab	\N	{}
7332	Flibanserin	\N	{}
7333	Flindokalner	\N	{}
7334	Flovagatran	\N	{}
7335	Floverine	\N	{}
7336	Flosatidil	\N	{}
7337	Flosequinan	\N	{}
7338	Floxacrine	\N	{}
7339	Floxuridine	\N	{}
7340	Floctafenine	\N	{}
7341	Flomoxef	\N	{}
7342	Flopristin	\N	{}
7343	Flopropione	\N	{}
7344	Florantyrone	\N	{}
7345	Florbenazine (18F)	\N	{}
7346	Florbetaben (18F)	\N	{}
7347	Florbetapir (18F)	\N	{}
7348	Flordipine	\N	{}
7349	Floredil	\N	{}
7350	Florilglutamic acid (18F)	\N	{}
7351	Florifenine	\N	{}
7352	Flortanidazole (18F)	\N	{}
7353	Flortaucipir (18F)	\N	{}
7354	Florfenicol	\N	{}
7355	Flosulide	\N	{}
7356	Flotegatide (18F)	\N	{}
7357	Flotrenizine	\N	{}
7358	Fluazacort	\N	{}
7359	Fluazuron	\N	{}
7360	Flualamide	\N	{}
7361	Fluanisone	\N	{}
7362	Fluacizine	\N	{}
7363	Flubanilate	\N	{}
7364	Flubendazole	\N	{}
7365	Flubepride	\N	{}
7366	Fluvastatin	\N	{}
7367	Fluvoxamine	\N	{}
7368	Flugestone	\N	{}
7369	Fludazonium chloride	\N	{}
7370	Fludalanine	\N	{}
7371	Fludarabine	\N	{}
7372	Fludeoxyglucose (18F)	\N	{}
7373	Fludiazepam	\N	{}
7374	Fludoxopone	\N	{}
7375	Fludorex	\N	{}
7376	Fludrocortisone	\N	{}
7377	Fludroxycortide	\N	{}
7378	Fluzinamide	\N	{}
7379	Flusoxolol	\N	{}
7380	Fluzoperine	\N	{}
7381	Fluindarol	\N	{}
7382	Fluindione	\N	{}
7383	Flucarbril	\N	{}
7384	Fluquazone	\N	{}
7385	Flucloxacillin	\N	{}
7386	Fluclorolone acetonide	\N	{}
7387	Fluconazole	\N	{}
7388	Flucrilate	\N	{}
7389	Flumazenil	\N	{}
7390	Flumedroxone	\N	{}
7391	Flumezapine	\N	{}
7392	Flumexadol	\N	{}
7393	Flumeridone	\N	{}
7394	Flumetasone	\N	{}
7395	Flumethiazide	\N	{}
7396	Flumetramide	\N	{}
7397	Flumequine	\N	{}
7398	Flumecinol	\N	{}
7399	Flumizole	\N	{}
7400	Fluminorex	\N	{}
7401	Flumoxonide	\N	{}
7402	Flunarizine	\N	{}
7403	Flunidazole	\N	{}
7404	Flunisolide	\N	{}
7405	Flunixin	\N	{}
7406	Flunitrazepam	\N	{}
7407	Flunoxaprofen	\N	{}
7408	Flunoprost	\N	{}
7409	Fluocortin	\N	{}
7410	Fluocortolone	\N	{}
7411	Fluoxetine	\N	{}
7412	Fluoxymesterone	\N	{}
7413	Fluoresone	\N	{}
7414	Fluorescein lisicol	\N	{}
7415	Fluorodopa (18F)	\N	{}
7416	Fluotracen	\N	{}
7417	Fluocinolone acetonide	\N	{}
7418	Fluocinonide	\N	{}
7419	Fluparoxan	\N	{}
7420	Flupentixol	\N	{}
7421	Fluperamide	\N	{}
7422	Fluperlapine	\N	{}
7423	Fluperolone	\N	{}
7424	Flupimazine	\N	{}
7425	Flupirtine	\N	{}
7426	Fluprazine	\N	{}
7427	Flupranone	\N	{}
7428	Fluprednidene	\N	{}
7429	Fluprednisolone	\N	{}
7430	Fluproquazone	\N	{}
7431	Fluprostenol	\N	{}
7432	Fluprofen	\N	{}
7433	Fluprofylline	\N	{}
7434	Fluradoline	\N	{}
7435	Flurazepam	\N	{}
7436	Fluralaner	\N	{}
7437	Flurantel	\N	{}
7438	Flurbiprofen	\N	{}
7439	Flurdihydroergotamine	\N	{}
7440	Fluretofen	\N	{}
7441	Flurithromycin	\N	{}
7442	Fluroxene	\N	{}
7443	Flurotyl	\N	{}
7444	Flurofamide	\N	{}
7445	Flurocitabine	\N	{}
7446	Flurpiridaz (18F)	\N	{}
7447	Flusalan	\N	{}
7448	Fluspiperone	\N	{}
7449	Fluspirilene	\N	{}
7450	Flutazolam	\N	{}
7451	Flutamide	\N	{}
7452	Flutafuranol (18F)	\N	{}
7453	Flutemazepam	\N	{}
7454	Flutemetamol (18F)	\N	{}
7455	Flutiazin	\N	{}
7456	Flutizenol	\N	{}
7457	Fluticasone	\N	{}
7458	Fluticasone furoate	\N	{}
7459	Flutomidate	\N	{}
7460	Flutonidine	\N	{}
7461	Flutoprazepam	\N	{}
7462	Flutrimazole	\N	{}
7463	Flutriciclamide (18F)	\N	{}
7464	Flutroline	\N	{}
7465	Flutropium bromide	\N	{}
7466	Fluphenazine	\N	{}
7467	Flufenamic acid	\N	{}
7468	Flufenisal	\N	{}
7469	Flufylline	\N	{}
7470	Flufosal	\N	{}
7471	Flucetorex	\N	{}
7472	Fluciclatide (18F)	\N	{}
7473	Fluciclovine (18F)	\N	{}
7474	Flucindole	\N	{}
7475	Fluciprazine	\N	{}
7476	Flucytosine	\N	{}
7477	Flunamine	\N	{}
7478	Fodipir	\N	{}
7479	Fosazepam	\N	{}
7480	Fosarilate	\N	{}
7481	Fosenazide	\N	{}
7482	Fozivudine tidoxil	\N	{}
7483	Fosinoprilat	\N	{}
7484	Fosopamine	\N	{}
7485	Phoxim	\N	{}
7486	Pholedrine	\N	{}
7487	Folescutol	\N	{}
7488	Folic acid	\N	{}
7489	Folitixorin	\N	{}
7490	Pholcodine	\N	{}
7491	Follitropin alfa	\N	{}
7492	Follitropin beta	\N	{}
7493	Follitropin gamma	\N	{}
7494	Follitropin delta	\N	{}
7495	Follitropin epsilon	\N	{}
7496	Fomepizole	\N	{}
7497	Fomivirsen	\N	{}
7498	Fomidacillin	\N	{}
7499	Fominoben	\N	{}
7500	Fomocaine	\N	{}
7501	Fonadelpar	\N	{}
7502	Fondaparinux sodium	\N	{}
7503	Fontolizumab	\N	{}
7504	Fonturacetam	\N	{}
7505	Fopirtoline	\N	{}
7506	Foravirumab	\N	{}
7507	Foralumab	\N	{}
7508	Forasartan	\N	{}
7509	Foretinib	\N	{}
7510	Forigerimod	\N	{}
7511	Formebolone	\N	{}
7512	Formestane	\N	{}
7513	Formetorex	\N	{}
7514	Forminitrazole	\N	{}
7515	Formocortal	\N	{}
7516	Formoterol	\N	{}
7517	Forodesine	\N	{}
7518	Foropafant	\N	{}
7519	Forfenimex	\N	{}
7520	Fosalvudine tidoxil	\N	{}
7521	Fosamprenavir	\N	{}
7522	Fosaprepitant	\N	{}
7523	Fosbretabulin	\N	{}
7524	Fosveset	\N	{}
7525	Fosdagrocorat	\N	{}
7526	Fosdevirine	\N	{}
7527	Foscarnet sodium	\N	{}
7528	Foscolic acid	\N	{}
7529	Fosmenic acid	\N	{}
7530	Fosmidomycin	\N	{}
7531	Fosnetupitant	\N	{}
7532	Fospirate	\N	{}
7533	Fospropofol	\N	{}
7534	Fosravuconazole	\N	{}
7535	Fostamatinib	\N	{}
7536	Fostedate	\N	{}
7537	Fostedil	\N	{}
7538	Fostemsavir	\N	{}
7539	Fostriecin	\N	{}
7540	Fosphenytoin	\N	{}
7541	Fosfluconazole	\N	{}
7542	Fosfluridine tidoxil	\N	{}
7543	Fosfocreatinine	\N	{}
7544	Fosfomycin	\N	{}
7545	Fosfonet sodium	\N	{}
7546	Fosfosal	\N	{}
7547	Fosfructose	\N	{}
7548	Fosfestrol	\N	{}
7549	Fosquidone	\N	{}
7550	Fotemustine	\N	{}
7551	Fotretamine	\N	{}
7552	Frabuprofen	\N	{}
7553	Fradafiban	\N	{}
7554	Frakefamide	\N	{}
7555	Framycetin	\N	{}
7556	Freselestat	\N	{}
7557	Fresolimumab	\N	{}
7558	Fremanezumab	\N	{}
7559	Frentizole	\N	{}
7560	Frovatriptan	\N	{}
7561	Froxiprost	\N	{}
7562	Fronepidil	\N	{}
7563	Ftaxilide	\N	{}
7564	Phthalylsulfamethizole	\N	{}
7565	Phthalylsulfathiazole	\N	{}
7566	Ftalofyne	\N	{}
7567	Ftivazide	\N	{}
7568	Ftormetazine	\N	{}
7569	Fluorometholone	\N	{}
7570	Ftorpropazine	\N	{}
7571	Fluorouracil	\N	{}
7572	Fluorfenidine (18F)	\N	{}
7573	Fubrogonium iodide	\N	{}
7575	Fusafungine	\N	{}
7576	Fusidic acid	\N	{}
7577	Fuzlocillin	\N	{}
7578	Fuladectin	\N	{}
7579	Fulvestrant	\N	{}
7580	Fulranumab	\N	{}
7581	Fumagillin	\N	{}
7582	Fumoxicillin	\N	{}
7583	Funapide	\N	{}
7584	Fuprazole	\N	{}
7585	Furazabol	\N	{}
7586	Furazolidone	\N	{}
7587	Furazolium chloride	\N	{}
7588	Furacrinic acid	\N	{}
7589	Furalazine	\N	{}
7590	Furaltadone	\N	{}
7591	Furaprevir	\N	{}
7592	Furaprofen	\N	{}
7593	Furafylline	\N	{}
7594	Furbucillin	\N	{}
7595	Furegrelate	\N	{}
7596	Furethidine	\N	{}
7597	Furidarone	\N	{}
7598	Furcloprofen	\N	{}
7599	Furmethoxadone	\N	{}
7600	Furnidipine	\N	{}
7601	Furobufen	\N	{}
7602	Furodazole	\N	{}
7603	Furomazine	\N	{}
7604	Furomine	\N	{}
7605	Furostilbestrol	\N	{}
7606	Furofenac	\N	{}
7607	Fursalan	\N	{}
7608	Fursultiamine	\N	{}
7609	Furterene	\N	{}
7610	Furtrethonium iodide	\N	{}
7611	Furfenorex	\N	{}
7612	Futuximab	\N	{}
7613	Chaulmosulfone	\N	{}
7614	Chenodeoxycholic acid	\N	{}
7615	Quizartinib	\N	{}
7616	Quillifoline	\N	{}
7617	Quilostigmine	\N	{}
7618	Chymopapain	\N	{}
7619	Chymotrypsin	\N	{}
7620	Quinagolide	\N	{}
7621	Quinazosin	\N	{}
7622	Quinacainol	\N	{}
7623	Quinaldine blue	\N	{}
7624	Quinaprilat	\N	{}
7625	Quinacillin	\N	{}
7626	Quinbolone	\N	{}
7627	Quingestanol	\N	{}
7628	Quingestrone	\N	{}
7629	Quindecamine	\N	{}
7630	Quindoxin	\N	{}
7631	Quindonium bromide	\N	{}
7632	Quinezamide	\N	{}
7633	Quinelorane	\N	{}
7634	Quinethazone	\N	{}
7635	Quinetalate	\N	{}
7636	Quinisocaine	\N	{}
7637	Chiniofon	\N	{}
7638	Quincarbate	\N	{}
7639	Quinotolast	\N	{}
7640	Quinocide	\N	{}
7641	Quinpirole	\N	{}
7642	Quinprenaline	\N	{}
7643	Quintiofos	\N	{}
7644	Quinuclium bromide	\N	{}
7645	Quinupramine	\N	{}
7646	Quinupristin	\N	{}
7647	Quinfamide	\N	{}
7648	Quinestradol	\N	{}
7649	Quinestrol	\N	{}
7650	Quipazine	\N	{}
7651	Quisinostat	\N	{}
7652	Quisultazine	\N	{}
7653	Quifenadine	\N	{}
7654	Quiflapon	\N	{}
7655	Chlorazanil	\N	{}
7656	Chlorazodin	\N	{}
7657	Cloral betaine	\N	{}
7658	Chloralodol	\N	{}
7659	Chloralose	\N	{}
7660	Chlorambucil	\N	{}
7661	Chloramphenicol	\N	{}
7662	Cloramfenicol pantotenate complex	\N	{}
7663	Cloracetadol	\N	{}
7664	Chloracyzine	\N	{}
7665	Chlorbenzoxamine	\N	{}
7666	Chlorbetamide	\N	{}
7667	Chlorhexidine	\N	{}
7668	Chlordiazepoxide	\N	{}
7669	Chlordimorine	\N	{}
7670	Chlorzoxazone	\N	{}
7671	Chlorisondamine chloride	\N	{}
7672	Chlormadinone	\N	{}
7673	Chlormezanone	\N	{}
7674	Chlormerodrin	\N	{}
7675	Chlormerodrin (197Hg)	\N	{}
7676	Chlormethine	\N	{}
7677	Chlormidazole	\N	{}
7678	Chlornaphazine	\N	{}
7679	Chlorobutanol	\N	{}
7680	Chloroserpidine	\N	{}
7681	Chlorocresol	\N	{}
7682	Chloroxylenol	\N	{}
7683	Chloropyramine	\N	{}
7684	Chloropyrilene	\N	{}
7685	Chloroprednisone	\N	{}
7686	Chloroprocaine	\N	{}
7687	Chlorotrianisene	\N	{}
7688	Cloroqualone	\N	{}
7689	Chloroquine	\N	{}
7690	Chlorproguanil	\N	{}
7691	Chlorpromazine	\N	{}
7692	Chlorpropamide	\N	{}
7693	Chlorprothixene	\N	{}
7694	Chlorproethazine	\N	{}
7695	Chlorthenoxazine	\N	{}
7696	Chlortetracycline	\N	{}
7697	Chlorphenamine	\N	{}
7698	Chlorphenesin	\N	{}
7699	Chlorphenoxamine	\N	{}
7700	Chlorphenoctium amsonate	\N	{}
7701	Chlorphentermine	\N	{}
7702	Chlorquinaldol	\N	{}
7703	Chlorcyclizine	\N	{}
7704	Choline alfoscerate	\N	{}
7705	Choline gluconate	\N	{}
7706	Choline salicylate	\N	{}
7707	Choline theophyllinate	\N	{}
7708	Choline fenofibrate	\N	{}
7709	Choline chloride	\N	{}
7710	Choriogonadotropin alfa	\N	{}
7711	Chromocarb	\N	{}
7712	Cebaracetam	\N	{}
7713	Cebranopadol	\N	{}
7714	Cevimeline	\N	{}
7715	Cevipabulin	\N	{}
7716	Cevoglitazar	\N	{}
7717	Cedelizumab	\N	{}
7718	Cedefingol	\N	{}
7719	Cediranib	\N	{}
7720	Cesium (131Cs) chloride	\N	{}
7721	Celgosivir	\N	{}
7722	Celecoxib	\N	{}
7723	Celivarone	\N	{}
7724	Celiprolol	\N	{}
7725	Cellaburate	\N	{}
7726	Cellacefate	\N	{}
7727	Celmoleukin	\N	{}
7728	Celucloral	\N	{}
7729	Cemadotin	\N	{}
7730	Cemdisiran	\N	{}
7731	Cenderitide	\N	{}
7732	Cenegermin	\N	{}
7733	Cenerimod	\N	{}
7734	Cenersen	\N	{}
7735	Cenicriviroc	\N	{}
7736	Cenisertib	\N	{}
7737	Cenobamate	\N	{}
7738	Cenplacel	\N	{}
7739	Censavudine	\N	{}
7740	Centanafadine	\N	{}
7741	Cepeginterferon alfa-2b	\N	{}
7742	Ceralifimod	\N	{}
7743	Cergutuzumab amunaleukin	\N	{}
7744	Cerdulatinib	\N	{}
7745	Cerivastatin	\N	{}
7746	Cericlamine	\N	{}
7747	Ceritinib	\N	{}
7748	Cerlapirdine	\N	{}
7749	Cerliponase alfa	\N	{}
7750	Ceronapril	\N	{}
7751	Certolizumab pegol	\N	{}
7752	Certoparin sodium	\N	{}
7753	Ceruletide	\N	{}
7754	Cetaben	\N	{}
7755	Cetalkonium chloride	\N	{}
7756	Cetamolol	\N	{}
7757	Cethexonium chloride	\N	{}
7758	Cetermin	\N	{}
7759	Cetefloxacin	\N	{}
7760	Cetiedil	\N	{}
7761	Cetilistat	\N	{}
7762	Cetylpyridinium chloride	\N	{}
7763	Cetirizine	\N	{}
7764	Cetohexazine	\N	{}
7765	Cetoxime	\N	{}
7766	Cetomacrogol 1000	\N	{}
7767	Cetotiamine	\N	{}
7768	Cetofenicol	\N	{}
7769	Cetocycline	\N	{}
7770	Cetraxate	\N	{}
7771	Cetrimide	\N	{}
7772	Cetrimonium bromide	\N	{}
7773	Cethromycin	\N	{}
7774	Cetrorelix	\N	{}
7775	Cetuximab	\N	{}
7776	Cefadroxil	\N	{}
7777	Cefazaflur	\N	{}
7778	Cefazedone	\N	{}
7779	Cefazolin	\N	{}
7780	Cefaclor	\N	{}
7781	Cefalexin	\N	{}
7782	Cefaloglycin	\N	{}
7783	Cefalonium	\N	{}
7784	Cefaloram	\N	{}
7785	Cefaloridine	\N	{}
7786	Cefalotin	\N	{}
7787	Cefamandole	\N	{}
7788	Cefaparole	\N	{}
7789	Cefapirin	\N	{}
7790	Cefatrizine	\N	{}
7791	Cefacetrile	\N	{}
7792	Cefbuperazone	\N	{}
7793	Cefdaloxime	\N	{}
7794	Cefdinir	\N	{}
7795	Cefditoren	\N	{}
7796	Cefedrolor	\N	{}
7797	Cefempidone	\N	{}
7798	Cefepime	\N	{}
7799	Cefetamet	\N	{}
7800	Cefetecol	\N	{}
7801	Cefetrizole	\N	{}
7802	Cefivitril	\N	{}
7803	Cefiderocol	\N	{}
7804	Cefixime	\N	{}
7805	Cefilavancin	\N	{}
7806	Cefcanel	\N	{}
7807	Cefcanel daloxate	\N	{}
7808	Cefcapene	\N	{}
7809	Cefclidin	\N	{}
7810	Cefluprenam	\N	{}
7811	Cefmatilen	\N	{}
7812	Cefmenoxime	\N	{}
7813	Cefmepidium chloride	\N	{}
7814	Cefmetazole	\N	{}
7815	Cefminox	\N	{}
7816	Cefovecin	\N	{}
7817	Cefodizime	\N	{}
7818	Cefoselis	\N	{}
7819	Cefozopran	\N	{}
7820	Cefoxazole	\N	{}
7821	Cefoxitin	\N	{}
7822	Cefonicid	\N	{}
7823	Cefoperazone	\N	{}
7824	Ceforanide	\N	{}
7825	Cefotaxime	\N	{}
7826	Cefotetan	\N	{}
7827	Cefotiam	\N	{}
7828	Cefpimizole	\N	{}
7829	Cefpiramide	\N	{}
7830	Cefpirome	\N	{}
7831	Cefpodoxime	\N	{}
7832	Cefprozil	\N	{}
7833	Cefradine	\N	{}
7834	Cefroxadine	\N	{}
7835	Cefrotil	\N	{}
7836	Cefsulodin	\N	{}
7837	Cefsumide	\N	{}
7838	Ceftazidime	\N	{}
7839	Ceftaroline fosamil	\N	{}
7840	Ceftezole	\N	{}
7841	Cefteram	\N	{}
7842	Ceftibuten	\N	{}
7843	Ceftizoxime	\N	{}
7844	Ceftizoxime alapivoxil	\N	{}
7845	Ceftioxide	\N	{}
7846	Ceftiolene	\N	{}
7847	Ceftiofur	\N	{}
7848	Ceftobiprole	\N	{}
7849	Ceftobiprole medocaril	\N	{}
7850	Ceftolozane	\N	{}
7851	Ceftriaxone	\N	{}
7852	Cefuzonam	\N	{}
7853	Cefuracetime	\N	{}
7854	Cefuroxime	\N	{}
7855	Cefquinome	\N	{}
7856	Ciadox	\N	{}
7857	Ciamexon	\N	{}
7858	Cyamemazine	\N	{}
7859	Cianergoline	\N	{}
7860	Cianidanol	\N	{}
7861	Cyanocobalamin	\N	{}
7862	Cyanocobalamin (57Co)	\N	{}
7863	Cyanocobalamin (58Co)	\N	{}
7864	Cyanocobalamin (60Co)	\N	{}
7865	Cianopramine	\N	{}
7866	Ciapilome	\N	{}
7867	Ciaftalan zinc	\N	{}
7868	Cyacetacide	\N	{}
7869	Cibenzoline	\N	{}
7870	Cibinetide	\N	{}
7871	Cyheptamide	\N	{}
7872	Ciheptolane	\N	{}
7873	Cyheptropine	\N	{}
7874	Ciglitazone	\N	{}
7875	Cideferron	\N	{}
7876	Cidoxepin	\N	{}
7877	Cidofovir	\N	{}
7878	Cisapride	\N	{}
7879	Cizolirtine	\N	{}
7880	Cicaprost	\N	{}
7881	Cicarperone	\N	{}
7882	Ciclazindol	\N	{}
7883	Cyclazodone	\N	{}
7884	Cyclazocine	\N	{}
7885	Ciclactate	\N	{}
7886	Cyclandelate	\N	{}
7887	Cyclarbamate	\N	{}
7888	Ciclafrine	\N	{}
7889	Ciclacillin	\N	{}
7890	Cyclexanone	\N	{}
7891	Ciclesonide	\N	{}
7892	Cicletanine	\N	{}
7893	Cyclizine	\N	{}
7894	Ciclindole	\N	{}
7895	Cicliomenol	\N	{}
7896	Cycliramine	\N	{}
7897	Cyclobarbital	\N	{}
7898	Ciclobendazole	\N	{}
7899	Cyclobenzaprine	\N	{}
7900	Cyclobutyrol	\N	{}
7901	Cyclobutoic acid	\N	{}
7902	Cyclovalone	\N	{}
7903	Cicloheximide	\N	{}
7904	Cycloguanil embonate	\N	{}
7905	Cicloxilic acid	\N	{}
7906	Cicloxolone	\N	{}
7907	Cyclomenol	\N	{}
7908	Cyclomethycaine	\N	{}
7909	Ciclonicate	\N	{}
7910	Ciclonium bromide	\N	{}
7911	Cyclopentamine	\N	{}
7912	Cyclopentolate	\N	{}
7913	Ciclopirox	\N	{}
7914	Cyclopyrronium bromide	\N	{}
7915	Ciclopramine	\N	{}
7916	Cyclopregnol	\N	{}
7917	Cicloprolol	\N	{}
7918	Cyclopropane	\N	{}
7919	Cicloprofen	\N	{}
7920	Cycloserine	\N	{}
7921	Ciclosidomine	\N	{}
7922	Ciclosporin	\N	{}
7923	Ciclotate	\N	{}
7924	Cyclothiazide	\N	{}
7925	Ciclotizolam	\N	{}
7926	Ciclotropium bromide	\N	{}
7927	Ciclofenazine	\N	{}
7928	Cyclofenil	\N	{}
7929	Cyclophosphamide	\N	{}
7930	Cicortonide	\N	{}
7931	Cycotiamine	\N	{}
7932	Cycrimine	\N	{}
7933	Cicrotoic acid	\N	{}
7934	Cixutumumab	\N	{}
7935	Ciladopa	\N	{}
7936	Cilazaprilat	\N	{}
7937	Cilansetron	\N	{}
7938	Cilastatin	\N	{}
7939	Cilexetil	\N	{}
7940	Cilengitide	\N	{}
7941	Cilmostim	\N	{}
7942	Cilnidipine	\N	{}
7943	Cilobamine	\N	{}
7944	Cilobradine	\N	{}
7945	Cilomilast	\N	{}
7946	Cilostazol	\N	{}
7947	Cilostamide	\N	{}
7948	Cilofungin	\N	{}
7949	Ciltoprazine	\N	{}
7950	Ciluprevir	\N	{}
7951	Cilutazoline	\N	{}
7952	Cimaglermin alfa	\N	{}
7953	Cimaterol	\N	{}
7954	Cimemoxin	\N	{}
7955	Cimepanol	\N	{}
7956	Cimetidine	\N	{}
7957	Cimetropium bromide	\N	{}
7958	Cimicoxib	\N	{}
7959	Cimoxatone	\N	{}
7960	Cinacalcet	\N	{}
7961	Cinalukast	\N	{}
7962	Cinametic acid	\N	{}
7963	Cinamolol	\N	{}
7964	Cinanserin	\N	{}
7965	Cinaproxen	\N	{}
7966	Cynarine	\N	{}
7967	Cinaciguat	\N	{}
7968	Cingestol	\N	{}
7969	Cinhyaluronate sodium	\N	{}
7970	Cindunistat	\N	{}
7971	Cinecromen	\N	{}
7972	Cinepazet	\N	{}
7973	Cinepazide	\N	{}
7974	Cinepazic acid	\N	{}
7975	Cinepaxadil	\N	{}
7976	Cinitapride	\N	{}
7977	Zinc acetate, basic	\N	{}
7978	Cinmetacin	\N	{}
7979	Cinnamaverine	\N	{}
7980	Cinnamedrine	\N	{}
7981	Cinnarizine	\N	{}
7982	Cinnarizine clofibrate	\N	{}
7983	Cinnopentazone	\N	{}
7984	Cinnofuradione	\N	{}
7985	Cinoxate	\N	{}
7986	Cinoxacin	\N	{}
7987	Cinoxolone	\N	{}
7988	Cinoxopazide	\N	{}
7989	Cinoctramide	\N	{}
7990	Cinolazepam	\N	{}
7991	Cinoquidox	\N	{}
7992	Cinperene	\N	{}
7993	Cinprazole	\N	{}
7994	Cinpropazide	\N	{}
7995	Cinromide	\N	{}
7996	Cintramide	\N	{}
7997	Cintredekin besudotox	\N	{}
7998	Cinuperone	\N	{}
7999	Cinfenine	\N	{}
8000	Cinfenoac	\N	{}
8001	Cinflumide	\N	{}
8002	Cinchocaine	\N	{}
8003	Cinchophen	\N	{}
8004	Cioteronel	\N	{}
8005	Cipamfylline	\N	{}
8006	Cipargamin	\N	{}
8007	Cipemastat	\N	{}
8008	Cypenamine	\N	{}
8009	Cipionate	\N	{}
8010	Ciprazafone	\N	{}
8011	Cyprazepam	\N	{}
8012	Cipralisant	\N	{}
8013	Ciprafamide	\N	{}
8014	Cyprenorphine	\N	{}
8015	Ciprefadol	\N	{}
8016	Cyproheptadine	\N	{}
8017	Cyprodenate	\N	{}
8018	Ciprokiren	\N	{}
8019	Ciproximide	\N	{}
8020	Cyprolidol	\N	{}
8021	Cipropride	\N	{}
8022	Ciprostene	\N	{}
8023	Cyproterone	\N	{}
8024	Ciprofibrate	\N	{}
8025	Ciprofloxacin	\N	{}
8026	Ciproquazone	\N	{}
8027	Ciproquinate	\N	{}
8028	Ciprocinonide	\N	{}
8029	Cirazoline	\N	{}
8030	Ciramadol	\N	{}
8031	Ciraparantag	\N	{}
8032	Cirolemycin	\N	{}
8033	Cyromazine	\N	{}
8034	Cisatracurium besilate	\N	{}
8035	Cisconazole	\N	{}
8036	Cismadinone	\N	{}
8037	Cisplatin	\N	{}
8038	Cysteine	\N	{}
8039	Cystine	\N	{}
8040	Cistinexine	\N	{}
8041	Citalopram	\N	{}
8042	Cytarabine	\N	{}
8043	Citatepine	\N	{}
8044	Citatuzumab bogatox	\N	{}
8045	Citenazone	\N	{}
8046	Citenamide	\N	{}
8047	Citicoline	\N	{}
8048	Citiolone	\N	{}
8049	Cifostodine	\N	{}
8050	Ebalzotan	\N	{}
8051	Ebastine	\N	{}
8052	Eberconazole	\N	{}
8053	Ebiratide	\N	{}
8054	Ebrotidine	\N	{}
8055	Ebselen	\N	{}
8056	Evandamine	\N	{}
8057	Evatanepag	\N	{}
8058	Evacetrapib	\N	{}
8059	Evenamide	\N	{}
8060	Evernimicin	\N	{}
8061	Everolimus	\N	{}
8062	Evinacumab	\N	{}
8063	Evobrutinib	\N	{}
8064	Evogliptin	\N	{}
8065	Evodenoson	\N	{}
8066	Evocalcet	\N	{}
8067	Evolocumab	\N	{}
8068	Evofosfamide	\N	{}
8069	Eganoprost	\N	{}
8070	Egaptivon pegol	\N	{}
8071	Eglumetad	\N	{}
8072	Egtazic acid	\N	{}
8073	Egualen	\N	{}
8074	Edaglitazone	\N	{}
8075	Edamine	\N	{}
8076	Edaravone	\N	{}
8077	Edasalonexent	\N	{}
8078	Edatrexate	\N	{}
8079	Edelfosine	\N	{}
8080	Edetic acid	\N	{}
8081	Edetol	\N	{}
8082	Edivoxetine	\N	{}
8083	Edisilate	\N	{}
8084	Edifoligide	\N	{}
8085	Edifolone	\N	{}
8086	Edobacomab	\N	{}
8087	Edogestrone	\N	{}
8088	Edodekin alfa	\N	{}
8089	Edoxudine	\N	{}
8090	Edonentan	\N	{}
8091	Edonerpic	\N	{}
8092	Edotecarin	\N	{}
8093	Edotreotide	\N	{}
8094	Edratide	\N	{}
8095	Edrecolomab	\N	{}
8096	Edronocaine	\N	{}
8097	Edrophonium chloride	\N	{}
8098	Esaprazole	\N	{}
8099	Ezatiostat	\N	{}
8100	Esafloxacin	\N	{}
8101	Eseridine	\N	{}
8102	Ezetimibe	\N	{}
8103	Ezlopitant	\N	{}
8104	Esomeprazole	\N	{}
8105	Esonarimod	\N	{}
8106	Esorubicin	\N	{}
8107	Esuprone	\N	{}
8108	Ezutromid	\N	{}
8109	Ecabapide	\N	{}
8110	Ecabet	\N	{}
8111	Ecadotril	\N	{}
8112	Ecallantide	\N	{}
8113	Ecalcidene	\N	{}
8114	Ecamsule	\N	{}
8115	Ecastolol	\N	{}
8116	Eclazolast	\N	{}
8117	Eclanamine	\N	{}
8118	Ecogramostim	\N	{}
8119	Ecomustine	\N	{}
8120	Econazole	\N	{}
8121	Ecopipam	\N	{}
8122	Ecopladib	\N	{}
8123	Ecothiopate iodide	\N	{}
8124	Ecraprost	\N	{}
8125	Ecromeximab	\N	{}
8126	Exalamide	\N	{}
8127	Exametazime	\N	{}
8128	Examorelin	\N	{}
8129	Exaprolol	\N	{}
8130	Exatecan	\N	{}
8131	Exatecan alideximer	\N	{}
8132	Exbivirumab	\N	{}
8133	Exemestane	\N	{}
8134	Exenatide	\N	{}
8135	Exepanol	\N	{}
8136	Exeporfinium chloride	\N	{}
8137	Exiproben	\N	{}
8138	Exisulind	\N	{}
8139	Exifone	\N	{}
8140	Ectylurea	\N	{}
8141	Eculizumab	\N	{}
8142	Elagolix	\N	{}
8143	Elacridar	\N	{}
8144	Elamipretide	\N	{}
8145	Elanzepine	\N	{}
8146	Elantrine	\N	{}
8147	Elapegademase	\N	{}
8148	Elarofiban	\N	{}
8149	Elafibranor	\N	{}
8150	Elacestrant	\N	{}
8151	Elacytarabine	\N	{}
8152	Elbanizine	\N	{}
8153	Elbasvir	\N	{}
8154	Elbimilast	\N	{}
8155	Elvitegravir	\N	{}
8156	Elvucitabine	\N	{}
8157	Elgemtumab	\N	{}
8158	Elgodipine	\N	{}
8159	Eldacimibe	\N	{}
8160	Eldecalcitol	\N	{}
8161	Eldexomer	\N	{}
8162	Eldelumab	\N	{}
8163	Eledoisin	\N	{}
8164	Elezanumab	\N	{}
8165	Eleclazine	\N	{}
8166	Elesclomol	\N	{}
8167	Eletriptan	\N	{}
8168	Elzasonan	\N	{}
8169	Elziverine	\N	{}
8170	Elivaldogene tavalentivec	\N	{}
8171	Eliglustat	\N	{}
8172	Elinafide	\N	{}
8173	Elinogrel	\N	{}
8174	Eliprodil	\N	{}
8175	Elisartan	\N	{}
8176	Elisidepsin	\N	{}
8177	Elcatonin	\N	{}
8178	Ellagic acid	\N	{}
8179	Elliptinium acetate	\N	{}
8180	Elmustine	\N	{}
8181	Elnadipine	\N	{}
8182	Elobixibat	\N	{}
8183	Elocalcitol	\N	{}
8184	Elomotecan	\N	{}
8185	Elopiprazole	\N	{}
8186	Elosulfase alfa	\N	{}
8187	Elotuzumab	\N	{}
8188	Elpamotide	\N	{}
8189	Elpetrigine	\N	{}
8190	Elsamitrucin	\N	{}
8191	Elsibucol	\N	{}
8192	Elsiglutide	\N	{}
8193	Elsilimomab	\N	{}
8194	Eltanolone	\N	{}
8195	Eltenac	\N	{}
8196	Eltoprazine	\N	{}
8197	Eltrapuldencel	\N	{}
8198	Eltrombopag	\N	{}
8199	Elubrixin	\N	{}
8200	Elucaine	\N	{}
8201	Eluxadoline	\N	{}
8202	Elfazepam	\N	{}
8203	Emakalim	\N	{}
8204	Emactuzumab	\N	{}
8205	Emapalumab	\N	{}
8206	Emapticap pegol	\N	{}
8207	Emapunil	\N	{}
8208	Embeconazole	\N	{}
8209	Embonate	\N	{}
8210	Embramine	\N	{}
8211	Embusartan	\N	{}
8212	Embutramide	\N	{}
8213	Emedastine	\N	{}
8214	Emepronium bromide	\N	{}
8215	Emeramide	\N	{}
8216	Emibetuzumab	\N	{}
8217	Emivirine	\N	{}
8218	Emiglitate	\N	{}
8219	Emideltide	\N	{}
8220	Emixustat	\N	{}
8221	Emilium tosilate	\N	{}
8222	Emylcamate	\N	{}
8223	Emitefur	\N	{}
8224	Emicerfont	\N	{}
8225	Emicizumab	\N	{}
8226	Emodepside	\N	{}
8227	Emoctakin	\N	{}
8228	Emopamil	\N	{}
8229	Emorfazone	\N	{}
8230	Empagliflozin	\N	{}
8231	Empegfilgrastim	\N	{}
8232	Emricasan	\N	{}
8233	Emtricitabine	\N	{}
8234	Emfilermin	\N	{}
8235	Enavatuzumab	\N	{}
8236	Enadenotucirev	\N	{}
8237	Enadoline	\N	{}
8238	Enazadrem	\N	{}
8239	Enalaprilat	\N	{}
8240	Enalkiren	\N	{}
8241	Enantate	\N	{}
8242	Enasidenib	\N	{}
8243	Enbucrilate	\N	{}
8244	Enviomycin	\N	{}
8245	Enviradene	\N	{}
8246	Enviroxime	\N	{}
8247	Englitazone	\N	{}
8248	Endixaprine	\N	{}
8249	Endomide	\N	{}
8250	Endomycin	\N	{}
8251	Endralazine	\N	{}
8252	Endrisone	\N	{}
8253	Enecadin	\N	{}
8254	Enerisant	\N	{}
8255	Enestebol	\N	{}
8256	Enefexine	\N	{}
8257	Enzacamene	\N	{}
8258	Enzalutamide	\N	{}
8259	Enzaplatovir	\N	{}
8260	Enzastaurin	\N	{}
8261	Enisoprost	\N	{}
8262	Eniclobrate	\N	{}
8263	Enilconazole	\N	{}
8264	Enilospirone	\N	{}
8265	Eniluracil	\N	{}
8266	Eniporide	\N	{}
8267	Enisamium iodide	\N	{}
8268	Encainide	\N	{}
8269	Encaleret	\N	{}
8270	Enclomifene	\N	{}
8271	Encorafenib	\N	{}
8272	Enlimomab	\N	{}
8273	Enlimomab pegol	\N	{}
8274	Enloplatin	\N	{}
8275	Enoblituzumab	\N	{}
8276	Enobosarm	\N	{}
8277	Enokizumab	\N	{}
8278	Enoxamast	\N	{}
8279	Enoxaparin sodium	\N	{}
8280	Enoxacin	\N	{}
8281	Enoximone	\N	{}
8282	Enoxolone	\N	{}
8283	Enolicam	\N	{}
8284	Enoticumab	\N	{}
8285	Enofelast	\N	{}
8286	Enocitabine	\N	{}
8287	Enpiprazole	\N	{}
8288	Enpiroline	\N	{}
8289	Enprazepine	\N	{}
8290	Enpromate	\N	{}
8291	Enprostil	\N	{}
8292	Enprofylline	\N	{}
8293	Enramycin	\N	{}
8294	Enrasentan	\N	{}
8295	Enrofloxacin	\N	{}
8296	Ensaculin	\N	{}
8297	Ensartinib	\N	{}
8298	Ensereptide	\N	{}
8299	Ensituximab	\N	{}
8300	Ensulizole	\N	{}
8301	Entacapone	\N	{}
8302	Entasobulin	\N	{}
8303	Entecavir	\N	{}
8304	Entinostat	\N	{}
8305	Entolimod	\N	{}
8306	Entospletinib	\N	{}
8307	Entrectinib	\N	{}
8308	Entsufon	\N	{}
8309	Enfenamic acid	\N	{}
8310	Enflurane	\N	{}
8311	Enfortumab vedotin	\N	{}
8312	Enfuvirtide	\N	{}
8313	Encenicline	\N	{}
8314	Enciprazine	\N	{}
8315	Encyprate	\N	{}
8316	Epacadostat	\N	{}
8317	Epalrestat	\N	{}
8318	Epanolol	\N	{}
8319	Epafipase	\N	{}
8320	Epelsiban	\N	{}
8321	Epervudine	\N	{}
8322	Eperezolid	\N	{}
8323	Eperisone	\N	{}
8324	Epertinib	\N	{}
8325	Epetirimod	\N	{}
8326	Epetraborole	\N	{}
8327	Epicainide	\N	{}
8328	Epicriptine	\N	{}
8329	Epimestrol	\N	{}
8330	Epinastine	\N	{}
8331	Epinephrine	\N	{}
8332	Epipropidine	\N	{}
8333	Epirizole	\N	{}
8334	Epiroprim	\N	{}
8335	Epirubicin	\N	{}
8336	Epitizide	\N	{}
8337	Epitiostanol	\N	{}
8338	Epitumomab	\N	{}
8339	Epitumomab cituxetan	\N	{}
8340	Epicillin	\N	{}
8341	Epiestriol	\N	{}
8342	Eplivanserin	\N	{}
8343	Epolamine	\N	{}
8344	Epoprostenol	\N	{}
8345	Epostane	\N	{}
8346	Epoetin alfa	\N	{}
8347	Epoetin beta	\N	{}
8348	Epoetin gamma	\N	{}
8349	Epoetin delta	\N	{}
8350	Epoetin zeta	\N	{}
8351	Epoetin kappa	\N	{}
8352	Epoetin omega	\N	{}
8353	Epoetin theta	\N	{}
8354	Epoetin epsilon	\N	{}
8355	Eprazinone	\N	{}
8356	Epratuzumab	\N	{}
8357	Eprinomectin	\N	{}
8358	Epristeride	\N	{}
8359	Eprobemide	\N	{}
8360	Eprovafen	\N	{}
8361	Eprodisate	\N	{}
8362	Eprozinol	\N	{}
8363	Eproxindine	\N	{}
8364	Eprotirome	\N	{}
8365	Eprociclovir	\N	{}
8366	Epsiprantel	\N	{}
8367	Eptazocine	\N	{}
8368	Eptacog alfa (activated)	\N	{}
8369	Eptacog alfa pegol (activated)	\N	{}
8370	Eptacog beta (activated)	\N	{}
8371	Eptaloprost	\N	{}
8372	Eptapirone	\N	{}
8373	Eptaplatin	\N	{}
8374	Eptastigmine	\N	{}
8375	Eptinezumab	\N	{}
8376	Eptifibatide	\N	{}
8377	Eptotermin alfa	\N	{}
8378	Eravacycline	\N	{}
8379	Erbulozole	\N	{}
8380	Erbumine	\N	{}
8381	Ergocalciferol	\N	{}
8382	Ergometrine	\N	{}
8383	Ergotamine	\N	{}
8384	Erdafitinib	\N	{}
8385	Erdosteine	\N	{}
8386	Erenumab	\N	{}
8387	Eretidigene velentivec	\N	{}
8388	Eribaxaban	\N	{}
8389	Eribulin	\N	{}
8390	Erizepine	\N	{}
8391	Ericolol	\N	{}
8392	Eritoran	\N	{}
8393	Eritrityl tetranitrate	\N	{}
8394	Erythromycin	\N	{}
8395	Erythromycin acistrate	\N	{}
8396	Erythromycin stinoprate	\N	{}
8397	Erlizumab	\N	{}
8398	Erlotinib	\N	{}
8399	Erocainide	\N	{}
8400	Ersentilide	\N	{}
8401	Ersofermin	\N	{}
8402	Ertapenem	\N	{}
8403	Erteberel	\N	{}
8404	Ertiprotafib	\N	{}
8405	Ertugliflozin	\N	{}
8406	Ertumaxomab	\N	{}
8407	Esaxerenone	\N	{}
8408	Esatenolol	\N	{}
8409	Eszopiclone	\N	{}
8410	Esilate	\N	{}
8411	Esketamine	\N	{}
8412	Esculamine	\N	{}
8413	Eslicarbazepine	\N	{}
8414	Esmirtazapine	\N	{}
8415	Esmolol	\N	{}
8416	Esoxybutynin	\N	{}
8417	Espatropate	\N	{}
8418	Esproquine	\N	{}
8419	Esreboxetine	\N	{}
8420	Estazolam	\N	{}
8421	Estolate	\N	{}
8422	Estradiol	\N	{}
8423	Estradiol benzoate	\N	{}
8424	Estradiol valerate	\N	{}
8425	Estradiol undecylate	\N	{}
8426	Estrazinol	\N	{}
8427	Estramustine	\N	{}
8428	Estrapronicate	\N	{}
8429	Estriol succinate	\N	{}
8430	Estrone	\N	{}
8431	Estrofurate	\N	{}
8432	Esuberaprost	\N	{}
8433	Esflurbiprofen	\N	{}
8434	Escitalopram	\N	{}
8435	Etabenzarone	\N	{}
8436	Etabonate	\N	{}
8437	Ethaverine	\N	{}
8438	Etazepine	\N	{}
8439	Etazolate	\N	{}
8440	Etasuline	\N	{}
8441	Etaqualone	\N	{}
8442	Ethacridine	\N	{}
8443	Etacrynic acid	\N	{}
8444	Etalocib	\N	{}
8445	Ethambutol	\N	{}
8446	Etamsylate	\N	{}
8447	Etamivan	\N	{}
8448	Etamicastat	\N	{}
8449	Etaminile	\N	{}
8450	Etamiphylline	\N	{}
8451	Etamocycline	\N	{}
8452	Etanercept	\N	{}
8453	Etanidazole	\N	{}
8454	Etanterol	\N	{}
8455	Etaracizumab	\N	{}
8456	Etarotene	\N	{}
8457	Etafedrine	\N	{}
8458	Etafenone	\N	{}
8459	Etacepride	\N	{}
8460	Etebenecid	\N	{}
8461	Etelcalcetide	\N	{}
8462	Ethenzamide	\N	{}
8463	Eteplirsen	\N	{}
8464	Eterobarb	\N	{}
8465	Etersalate	\N	{}
8466	Ethiazide	\N	{}
8467	Etibendazole	\N	{}
8468	Etybenzatropine	\N	{}
8469	Etiguanfacine	\N	{}
8470	Etidocaine	\N	{}
8471	Etidronic acid	\N	{}
8472	Etizolam	\N	{}
8473	Etisomicin	\N	{}
8474	Eticlopride	\N	{}
8475	Ethyl biscoumacetate	\N	{}
8476	Ethyl dibunate	\N	{}
8477	Ethyl dirazepate	\N	{}
8478	Ethyl cartrizoate	\N	{}
8479	Ethyl carfluzepate	\N	{}
8480	Ethyl loflazepate	\N	{}
8481	Etilamfetamine	\N	{}
8482	Etilevodopa	\N	{}
8483	Ethylmethylthiambutene	\N	{}
8484	Ethylcellulose	\N	{}
8485	Ethylestrenol	\N	{}
8486	Etilefrine	\N	{}
8487	Etilefrine pivalate	\N	{}
8488	Etymemazine	\N	{}
8489	Ethinamate	\N	{}
8490	Ethynerone	\N	{}
8491	Ethinylestradiol	\N	{}
8492	Etynodiol	\N	{}
8493	Etintidine	\N	{}
8494	Ethiodized oil (131I)	\N	{}
8495	Ethionamide	\N	{}
8496	Ethypicone	\N	{}
8497	Etipirium iodide	\N	{}
8498	Etiprednol dicloacetate	\N	{}
8499	Etiproston	\N	{}
8500	Etiracetam	\N	{}
8501	Etirinotecan pegol	\N	{}
8502	Etiroxate	\N	{}
8503	Etisazole	\N	{}
8504	Ethisterone	\N	{}
8505	Etisulergine	\N	{}
8506	Etifelmine	\N	{}
8507	Etifenin	\N	{}
8508	Etifoxine	\N	{}
8509	Eticyclidine	\N	{}
8510	Ethoheptazine	\N	{}
8511	Etoglucid	\N	{}
8512	Etodolac	\N	{}
8513	Etodroxizine	\N	{}
8514	Etozolin	\N	{}
8515	Etocarlide	\N	{}
8516	Etocrilene	\N	{}
8517	Etoxadrol	\N	{}
8518	Etoxazene	\N	{}
8519	Ethoxazorutoside	\N	{}
8520	Etoxeridine	\N	{}
8521	Etoxybamide	\N	{}
8522	Etoloxamine	\N	{}
8523	Etolorex	\N	{}
8524	Etolotifen	\N	{}
8525	Etomidate	\N	{}
8526	Etomidoline	\N	{}
8527	Ethomoxane	\N	{}
8528	Etomoxir	\N	{}
8529	Etonam	\N	{}
8530	Etonitazene	\N	{}
8531	Etonogestrel	\N	{}
8532	Etoperidone	\N	{}
8533	Etoposide	\N	{}
8534	Etoprindole	\N	{}
8535	Etoricoxib	\N	{}
8536	Etorphine	\N	{}
8537	Etosalamide	\N	{}
8538	Ethosuximide	\N	{}
8539	Ethotoin	\N	{}
8540	Etofamide	\N	{}
8541	Etofenamate	\N	{}
8542	Etofenprox	\N	{}
8543	Etofibrate	\N	{}
8544	Etofylline	\N	{}
8545	Etofylline clofibrate	\N	{}
8546	Etoformin	\N	{}
8547	Etofuradine	\N	{}
8548	Etrabamine	\N	{}
8549	Etravirine	\N	{}
8550	Etretinate	\N	{}
8551	Etripamil	\N	{}
8552	Etryptamine	\N	{}
8553	Etriciguat	\N	{}
8554	Etrolizumab	\N	{}
8555	Ethchlorvynol	\N	{}
8556	Eucatropine	\N	{}
8557	Euprocin	\N	{}
8558	Eufauserase	\N	{}
8559	Efavirenz	\N	{}
8560	Efalizumab	\N	{}
8561	Efaproxiral	\N	{}
8562	Efaroxan	\N	{}
8563	Efatutazone	\N	{}
8564	Efegatran	\N	{}
8565	Efepristin	\N	{}
8566	Efetozole	\N	{}
8567	Efinaconazole	\N	{}
8568	Efipladib	\N	{}
8569	Eflapegrastim	\N	{}
8570	Efletirizine	\N	{}
8571	Efloxate	\N	{}
8572	Eflornithine	\N	{}
8573	Eflumast	\N	{}
8574	Eflucimibe	\N	{}
8575	Efmoroctocog alfa	\N	{}
8576	Efonidipine	\N	{}
8577	Efpeglenatide	\N	{}
8578	Efpegsomatropin	\N	{}
8579	Efrotomycin	\N	{}
8580	Eftrenonacog alfa	\N	{}
20	Telmisartan	40 mg/day PO initially; titrated to 20-80 mg day PO, depending on response; patients with volume depletion should receive the lower dosage initially, under close supervision\n\nDosing considerations\nGenerally, adjust dosage monthly; adjust more aggressively in high-risk patients\nAlso given in combination with hydrochlorothiazide (Micardis HCT) or amlodipine (Twynsta)\n\nContraindications:\nHypersensitivity (anaphylaxis, angioedema)\nPregnancy (2nd and 3rd trimesters); significant risk of fetal or neonatal morbidity and mortality (see Black Box Warnings)\nBilateral renal artery stenosis\nDo not coadminister with aliskiren in patients with diabetes	\N
18	Bumetanide	I mg IV loading dose, then 0.5-2 mg/day PO divided q12hr\n\nContraindications:\nDocumented hypersensitivity to bumetanide or sulfonamides Severe uncorrected electrolyte depletion, anuria, hepatic coma	\N
5	Timolol	10-30 mg PO q12hr\nMaintenance: 20-40 mg/day\nNo more than 60 mg/day\nContraindications:\nBronchial asthma/COPD\nOvert cardiac failure, sinus bradycardia, 2°/3° heart block, cardiogenic shock\nHypersensitivity\nSick sinus syndrome without permanent pacemaker	\N
39	Fosinopril	10 mg PO qDay initially, no more than 40 mg/day\nContraindications\nHypersensitivity\nHistory of hereditary or angioedema associated with previous ACE inhibitor treatment\nCoadministration of neprilysin inhibitors (eg, sacubitril) with ACE inhibitors may increase angioedema risk; do not administer ACE inhibitors within 36 hr of switching to or from sacubitril/valsartan\nBilateral renal artery stenosis\nDo not coadminister with aliskiren in patients with diabetes mellitus or with renal impairment (ie, GFR <60 mL/min/1.73 m²)	\N
50	Valsartan	Initial\nMonotherapy in patients not volume-depleted: 40-80 mg PO BID\nPatients requiring greater BP reduction: 80 mg PO BID\nMaintenance\nAntihypertensive effect is substantially present within 2 weeks and maximal reduction is generally attained after 4 weeks\nIf additional antihypertensive effect required beyond the starting dose, the total daily dose may be increased to a maximum of 320 mg or a diuretic may be added\nAddition of a diuretic has a greater effect than dose increases beyond 80 mg\nTotal daily dose range: 80-320 mg/day\nMay be administered with other antihypertensives\nDosage Modifications\nRenal impairment\nCrCl ≥30 mL/min: No dose adjustment necessary in adults\nCrCl <30 mL/min: No dosage adjustments provided in the manufacturer’s labeling; use caution\nDialysis: Drug is not significantly removed through dialysis\nHepatic impairment\nMild-to-moderate liver impairment: No dosage adjustments necessary\nSevere liver impairment: No dosage adjustments provided in the manufacturer’s labeling\nContraindications:\nHypersensitivity\nCoadministration with aliskiren in patients with diabetes mellitus	\N
9	Nicardipine	PO: 20-40 mg (conventional) q8hr or 30-60 mg (extended release) q12hr\n\nExtended-release form preferred because of less frequent dosing, potentially smoother BP control, and concerns raised by short-acting nifedipinen\nIV: 5 mg/hr by slow infusion (50 mL/hr) initially; may be increased by 2.5 mg/hr every 15 minutes; not to exceed 15 mg/hr\n\nIV as substitute for conventional PO\nPO dose: 20 mg q8hr; equivalent IV infusion: 0.5 mg/hr\nPO dose: 30 mg q8hr; equivalent IV infusion: 1.2 mg/hrnPO dose: 40 mg q8hr; equivalent IV infusion: 2.2 mg/hr\nIf transitioning to PO nicardipine, initiate PO dosing 1 hr before discontinuance of IV\nDosing Modifications\nRenal impairment\nImmediate release: 20 mg PO q8hr initially; titrated to effect every 3 days\nExtended release: 30 mg PO q12hr initially; titrated to effect every 3 days\nIV: Use with caution; guidelines for dose adjustments not available; monitor and adjust as necessary\nHepatic impairment\nImmediate release: 20 mg PO q12hr initially; titrated to effect every 3 days\nDaily immediate-release dose may not be directly equivalent to daily extended-release dose; use caution in converting\nIV: Use with caution; guidelines for dose adjustments not available; monitor and adjust as necessary\nContraindications:\nHypersensitivity to nicardipine or other calcium-channel blockers\nAdvanced aortic stenosis	\N
45	Cilazapril	Adult: Initially, 1 mg once daily. 1st dose preferably at bedtime to avoid precipitous fall in BP. Maintenance: 2.5-5 mg/day. Patients on diuretics: Initially, 0.5 mg/day.\nDosage Modifications\nRenal impairment (CrCl <30 mL/min):  Initially, 0.5 mg/day. Max: 2.5 mg once daily. Severe (CrCl <10 mL/min): Avoid\nHepatic impairment (cirrhosis): Initially, 0.5 mg/day.\nContraindications:\nHistory of angioedema w/ previous ACE inhibitor therapy. Hereditary and idiopathic angioedema. Ascites. Severe renal impairment. Coadministration w/ aliskiren in patients w/ DM or renal impairment. Pregnancy.	\N
1	Verapamil	Immediate release\n80 mg PO q8hr initially; maintenance: 80-320 mg PO q12hr\nExtended release\nCalan, Isoptin SR: 180 mg/day PO given in morning (120 mg/day initially if patient elderly or of small stature); for desired response, may be increased to 240 mg/day, then to 360 mg/day (either 180 mg q12hr or 240 mg in morning and 120 mg in evening)\nVerelan: 180 mg/day PO (120 mg/day initially if patient elderly or of small stature); for desired response, may be increased to 240 mg/day PO, then by 120 mg/day at weekly intervals; not to exceed 480 mg/day\nVerelan PM: 200 mg/day PO at bedtime (100 mg/day if patient elderly or of small stature); may be increased by 100 mg/day at weekly intervals as needed; not to exceed 400 mg/day\nCovera-HS: 180 mg/day PO at bedtime (120 mg/day initially if patient elderly or of small stature); for desired response, may be increased to 240 mg/day, then by 120 mg/day at weekly intervals; not to exceed 480 mg/day\nDosing Modifications\nRenal impairment: Use with caution; monitor ECG; for Verelan PM, manufacturer recommends 100 mg at bedtime initially; if CrCl <10 mL/min, reduce dose by 25-50%\n\nHepatic impairment: In cirrhosis, reduce dose by 20-50% of normal for oral and IV administration\nContraindications:\nHypersensitivity to verapamil or other calcium channel blockersn Cardiogenic shock\nCongestive heart failure\nSymptomatic hypotension\nSick sinus syndrome (unless permanent pacemaker in place)\n2°/3° AV block (unless permanent pacemaker in place)	\N
30	Bendrofluazide	Initial dose: 5 to 20 mg orally per day\nMaintenance dose: 2.5 to 15 mg orally per day\nRenal Dose Adjustments\nCrCl 25 mL/min or less: Bendroflumethiazide is not recommended in patients with severe renal insufficiency since it is not expected to be filtered into the renal tubulen (its site of action) when the glomerular filtration is less than 25 mL/min.\nContraindications:\nHypersensitivity to chlorothiazide or sulfonamides Anuria	\N
51	Spironolactone	25-100mg PO qDay or divided q12hr initially; may adjust dosage to patient response q2weeks\n\nDosing Modifications\nRenal impairment\nPatients with renal impairment are at increased risk of hyperkalemia; monitor potassium closely\nPO suspension for treatment of patients who develop hyperkalemia on 20 mg PO qDay may reduce dose to 20 mg PO qOD\nPatients who develop hyperkalemia on 25 mg PO qDay may reduce to 25 mg PO qOD\nCrCl >50 mL/min/1.73 m²: 20 mg qDay (oral suspension); 25 mg qDay (tablets)\nCrCl 30-50 mL/min/1.73 m²: Consider initiating at 10 mg qDay (oral suspension) and 25 mg qOD (tablets)\nContraindications:\nHypersensitivity\nAddison disease or other conditions associated with hyperkalemia\nCoadministration with eplerenone	\N
46	Doxazosin	1 mg PO qDay in AM or PM; may titrate by doubling daily dose up to 16 mg qDay based on blood pressure response; usual dosage range is 1-2 mg qDay; if therapy is discontinued for several days, initiate dose at 1 mg qDay and titrate using initial dosing regimen\n\nExtended release: Not indicated for hypertension\nDosing Modifications\nHepatic impairment: Use with caution in mild-to-moderate hepatic dysfunction; do not use in severe impairment\n\nRenal impairment: Labeling from manufacturer does not provide dosage adjustment information\nContraindications:\nHypersensitivity to doxazosin or other quinazolines	\N
16	Eplerenone	Initial 50 mg PO qDay; may increase to 50 mg PO q12hr; may take up to four weeks for full therapeutic response; hyperkelemia may occur with doses >100 mg/day\nContraindications:\nHypersensitivity\n\nFor all patients: Serum potassium >5.5 mEq/L at initiation Creatinine clearance ≤30 mL/min Concomitant use with strong CYP3A inhibitors For the treatment of hypertension: Type 2 diabetes with microalbuminuria Serum creatinine >2.0 mg/dL in males, >1.8 mg/dL in females Creatinine clearance <50 mL/min Concomitant use of potassium supplements or potassium-sparing diuretics\n\nFor all patients\nSerum potassium >5.5 mEq/L at initiationnCreatinine clearance ≤30 mL/min\nConcomitant use with strong CYP3A inhibitors\nFor the treatment of hypertension\nType 2 diabetes with microalbuminuria\nSerum creatinine >2.0 mg/dL in males, >1.8 mg/dL in females\nCreatinine clearance <50 mL/min\nConcomitant use of potassium supplements or potassium-sparing diuretics	\N
3	Prazosin	Initial: 1 mg PO q8-12hr.\nMaintenance: 6-15 mg/day divided 2 or 3 times daily; alternatively, 1-5 mg PO BID; may increase dose to 20 mg/day in divided doses; some patients may benefit from up to 40 mg/day in divided doses.\n\nContraindications: hypersensitivity.	\N
11	Ramipril	HypertensionnInitial (not on diuretic): 2.5 mg PO qDaynnInitial (with diuretic): 1.25 mg PO qDay\n\nMaintenance: 2.5-20 mg/day PO qDay or divided q12hr\nDosage Modifications\nRenal impairment\nCrCl <40 mL/min and concomitant diuretic therapy: Not to exceed 5 mg/day (25% of normal dose)\nRenal failure and hypertension: 1.25 mg PO qDay initially; may titrate upward, not to exceed 5 mg/day\nGeriatric patients: At increased risk for renal dysfunction; adjust dose to renal clearance and monitor closely\nContraindications:\nHypersensitivity to drug or other ACE inhibitors\nDo not coadminister with aliskiren in patients with diabetes mellitus or with renal impairment (ie, GFR <60 mL/min/1.73 m²)\nCoadministration of neprilysin inhibitors (eg, sacubitril) with ACE inhibitors may increase angioedema risk; do not administer ACE inhibitors within 36 hr of switching to or from sacubitril/valsartan	\N
15	Olmesartan	20 mg/day PO initially; may be increased to 40 mg/day PO after 2 weeks; a diuretic may be added\nDosing Modifications\nRenal impairment\nCrCl ≥40 mL/min: No adjustment needed\nCrCl 20 mL/min to <40 mL/min: No initial adjustment necessary\nCrCl<20 mL/min: Consider lower initial dose and dose not to exceed 20 mg/daynHepatic impairment\nMild impairment: Dose adjustment not necessary\nModerate to severe: Initial dose adjustment not necessary; drug exposure may increase 60% in moderate impairment\nContraindications:\nHypersensitivity\nDo not coadminister with aliskiren in patients with diabetes mellitus or with renal impairment (ie, GFR <60 mL/min/1.73 m²)	\N
6	Acebutolol	400-1200 mg/day divided PO q12hr; not to exceed 1200 mg/day\nContraindications:\nHypersensitivity\nAsthma/COPD, severe bradycardia, 2°/3° heart block, cardiogenic shock, overt heart failure, sinus bradycardia, sick sinus syndrome without permanent pacemaker Avoid during breastfeeding	\N
13	Losartan	50 mg PO qDay initially; may increase to up to 100 mg/day\n\nPatients with possible intravascular depletion or receiving diuretics (eg, on diuretic therapy): 25 mg PO qDay initially\n\nHypertension with Left Ventricular Hypertrophy\nIndicated to reduce risk of stroke in patients with hypertension and left ventricular hypertrophy, but there is evidence that this benefit does not apply to Black patientsnn50 mg PO qDay initially; may increase to up to 100 mg/day\n\nHydrochlorothiazide 12.5 mg PO qDay may be added in combination; may increase to up to 25 mg/day\nDosage Modifications\nRenal impairment\nMild, moderate, or severe: No dosage adjustment necessary, except if the patient is volume depleted\nHepatic impairment\nMild-to-moderate: 25 mg PO qDay initially\nSevere: Not studied\nContraindications:\nHypersensitivity\nCoadministration with aliskiren in patients with diabetes mellitus	\N
23	Nisoldipine	Hydrogel ER tablets (Sular's new formulation): 17 mg PO qDay initially; may increase slowly by at least 1-week intervals; not to exceed 34 mg PO qDay\n\nCoat-core ER tablets (generic; old Sular formulation): 20 mg PO qDay initially; may increase slowly by at least 1-week intervals; not to exceed 60 mg/day\nContraindications:\nHypersensitivity to nisoldipine or other calcium channel blockers	\N
25	Candesartan	16 mg PO qDay, titrate to 8-32 mg PO qDay OR divided q12hr\n\nContraindications:\nHypersensitivity\nSevere hepatic impairment\nDo not coadminister with aliskiren in patients with diabetes	\N
7	Hydrochlorothiazide	12.5-50 mg PO once daily\nDosing Modifications\nRenal impairment\nCrCl <10 mL/min: Avoid usen CrCl ≥10 mL/min: Dose adjustment not necessary; not effective with CrCl <30 mL/min unless used in combination with loop diuretic\nContraindications\nDocumented hypersensitivity to hydrochlorothiazide or sulfonamides Anuria	\N
32	Metoprolol	The initial dose for metoprolol immediate release is 100 mg daily in single or divided doses, with or without a diuretic (maximum 450 mg/day). Metoprolol extended-release formulation can be started at a dose of 25-100 mg daily in a single dose, with or without a diuretic (maximum 400 mg/day).\nContraindications:\n2°/3° heart block in patients without pacemaker\nCardiogenic shock\nSinus bradycardia\nSinus node dysfunction\nHypersensitivity\nUncompensated cardiac failure\nPulmonary edema	\N
31	Benazepril	Patients taking a diuretic: 5 mg/day PO initially, to avoid excessive hypotension\nPatients not taking a diuretic: 10 mg/day PO\nMay increase to maintenance dose of 20-40 mg/day PO qDay or divided q12hr\nDosing Modifications\nRenal Impairment\nCrCl< 30 mL/min: 5 mg PO qDay initially; not to exceed 40 mg/day\nContraindications:\nHypersensitivity\nHistory of hereditary or idiopathic angioedema\nCoadministration of neprilysin inhibitors (eg, sacubitril) with ACE inhibitors may increase angioedema risk; do not administer ACE inhibitors within 36 hr of switching to or from sacubitril/valsartan\nConcomitant administration with aliskiren in patients with diabetes mellitus or with renal impairment	\N
36	Nadolol	40-320 mg PO qDay\nContraindications:\nHypersensitivity\nOvert cardiac failure, 2°/3° heart block, cardiogenic shock\nAsthma/COPD\nAvoid during breastfeeding\nSinus bradycardia\nSick sinus syndrome without permanent pacemaker	\N
14	Amlodipine	5 mg/day PO initially; may be increased by 2.5 mg/day every 7-14 days; not to exceed 10 mg/day maintenance: 5-10 mg/day\nDosage Modifications\nRenal impairment\nPharmacokinetics of amlodipine are not significantly affected by renal impairment; therefore no dosage adjustment necessary\nHepatic impairmentnLower initial dose may be required for patients with hepatic impairment\nConsider starting with 2.5 mg/day PO\nContraindications:\nHypersensitivity	\N
33	Trandolapril	In patients not taking a diuretic\n\nInitial dose\n1 mg PO qDay in nonblack patients\n2 mg PO qDay in black patients\nMaintenance dose\n2-4 mg PO qDay; may divide q12hr if BP response diminishes\nDosage Modifications\nRenal impairment (CrCl <30 mL/min): 0.5 mg PO qDay\n\nHepatic impairment (cirrhosis): 0.5 mg PO qDay\nContraindications:\nHypersensitivity\nHistory of hereditary or angioedema associated with previous ACE inhibitor treatment\nCoadministration of neprilysin inhibitors (eg, sacubitril) with ACE inhibitors may increase angioedema risk; do not administer ACE inhibitors within 36 hr of switching to or from sacubitril/valsartan\nBilateral renal artery stenosis\n\nDo not coadminister with aliskiren in patients with diabetes mellitus or with renal impairment (ie, GFR <60 mL/min/1.73 m²)	\N
34	Azilsartan	Indicated for hypertension, either alone or in combination with other antihypertensives\n\n80 mg PO qDay\n\nCoadministration with high-dose diuretics: 40 mg PO qDay\nContraindications:\nHypersensitivity\nDo not coadminister with aliskiren in patients with diabetes	\N
35	Bisoprolol	2.5-5 mg PO qDay; may increase to 10 mg and if necessary to 20 mg PO qDay\nContraindications:\nSinus bradycardia, 2°/3° heart block, cardiogenic shock, overt cardiac failure, hypersensitivity, sick sinus syndrome without permanent pacemaker	\N
4	Terazosin	Hypertension: initial: 1 mg PO qHS.\nMaintenance: 1-5 mg/day or q12hr; may increase to ≤20 mg/day.\n\nContraindications: hypersensitivity to terazosin, other quinazolines.	\N
53	Triamterene	Edema: 1-2 tablets/capsules (37.5-50 mg triamterene and 25 mg HCTZ) PO qDay;1 tablet (75 mg triamterene and 50 mg HCTZ) PO qDay.\n\nHypertension: 1-2 tablets/capsules (37.5-50 mg triamterene and 25 mg HCTZ) PO qDay; 1 tablet (75 mg triamterene and 50 mg HCTZ) PO qDay.	\N
37	Nebivolol	5 mg/day PO; may be increased every 2 weeks; not to exceed 40 mg/day\nDosing Modifications\nRenal impairment\nCrCl >30-80 mL/min: Dose adjustment not listed by the manufacturer\nCrCl <30 mL/min: 2.5 mg/day PO initially; increased cautiously\nHepatic impairment\nMild impairment (Child-Pugh A): Dose adjustment not listed by the manufacturer\nModerate Impairment (Child-Pugh Class B): 2.5 mg PO once daily; increase cautiously if initial response inadequate\nSevere impairment (Child-Pugh Class C): Contraindicated\nContraindications:\nHypersensitivity\nSevere hepatic impairment\nCardiogenic shock\nSick sinus syndrome (if no pacemaker)n2°/3° heart block (if no pacemaker)\nBradycardia (HR <50 beats/min)\nDecompensated heart failure\nSevere hepatic impairment (Child-Pugh Class C)	\N
42	Quinapril	Initial: 10-20 mg PO qDay; may administer 5 mg in patients receiving diuretic therapy if the diuretic is continued\n\nMaintenance: 20-80 mg PO qDay or divided q12hr\nDosage Modification\nRenal impairment with hypertension\nCrCl >60 mL/min: 10 mg/day\nCrCl 30-60 mL/min: 5 mg/day\nCrCl 10-30 mL/min: 2.5 mg/day\nCrCl <10 mL/min: Insufficient data\nContraindications:\nHypersensitivity\nHistory of hereditary or angioedema associated with previous ACE inhibitor treatment\nCoadministration of neprilysin inhibitors (eg, sacubitril) with ACE inhibitors may increase angioedema risk; do not administer ACE inhibitors within 36 hr of switching to or from sacubitril/valsartan\nBilateral renal artery stenosis\nDo not coadminister with aliskiren in patients with diabetes mellitus or with renal impairment (ie, GFR <60 mL/min/1.73 m²)	\N
43	Moexipril	Initial: 7.5mg PO qDay 1 hour prior to meal, OR 3.75mg PO qDay if on thiazide diuretic\nMaintenance: 7.5-30 mg/day PO qDay or divided q12hr\nAdminister 1 hr before meals\nContraindications:\nHypersensitivity to moexipril/other ACE inhibitors\nHistory of hereditary or angioedema associated with previous ACE inhibitor treatment\nCoadministration of neprilysin inhibitors (eg, sacubitril) with ACE inhibitors may increase angioedema risk; do not administer ACE inhibitors within 36 hr of switching to or from sacubitril/valsartan\nBilateral renal artery stenosis\nDo not coadminister with aliskiren in patients with diabetes mellitus or with renal impairment (ie, GFR <60 mL/min/1.73 m²)	\N
44	Perindopril	4-8 mg PO qDay or divided q12hr\nMaximum: 16 mg/day PO divided q12hr\nDiuretic may be added; careful initial titration required to avoid symptomatic hypotension\nContraindications:\nHypersensitivity to perindopril/other ACE inhibitors\nHistory of hereditary or angioedema associated with previous ACE inhibitor treatment\nCoadministration of neprilysin inhibitors (eg, sacubitril) with ACE inhibitors may increase angioedema risk; do not administer ACE inhibitors within 36 hr of switching to or from sacubitril/valsartan\nBilateral renal artery stenosis\nDo not coadminister with aliskiren in patients with diabetes mellitus or with renal impairment (ie, GFR <60 mL/min/1.73 m²)	\N
47	Atenolol	25-50 mg/day PO initially; may be increased to 100 mg/day PO\nDosing Modifications:\nCrCl 15-35 mL/min/1.73 m²: Not to exceed 50 mg/day PO\nCrCl <15 mL/min/1.73 m²: Not to exceed 25 mg/day PO\nCrCl >35 mL/min/1.73 m²: \nDose adjustment not necessary\nContraindications:\n2°/3° heart block in patients without pacemaker\nCardiogenic shock\nSinus bradycardia\nSinus node dysfunction\nHypersensitivity\nUncompensated cardiac failure\nPulmonary edema	\N
52	Eprosartan	Initial: 600 mg PO qDay, in patients without intravascular volume depletion\n\nMaintenance: 400-800 mg/day PO qDay OR divided q12hr PO (twice daily may improve effect)\n\nContraindications:\nHypersensitivity\nPregnancy (2nd/3rd trimesters): significant risk of fetal/neonatal morbidity and mortality\nBilateral renal artery stenosis\n\nDo not coadminister with aliskiren in patients with diabetes	\N
49	Chlorthalidone	* 12.5-25 mg/day PO;\n* may increase to 50 mg qDay after a suitable trial;\n* not to exceed 100 mg/day;\n* usual dose range is 12.5–25 mg/day\n\nDosing Considerations\nAdministered in the morning with foodn Dosing Modificationsn Renal impairmentn CrCl <10 mL/min: Ineffective; \ndo not usen CrCl ≥10 mL/min: Dose adjustment not necessary\nContraindications\nDocumented hypersensitivity to chlorthalidone or sulfonamides Anuria	\N
21	Diltiazem	Cardizem CD, Cartia XT, Dilt-CD: 180-240 mg/day PO; titrate after 14 days; maintenance range usually 180-420 mg/day; not to exceed 480 mg/day\n\nDilacor XR, Dilt-XR: 180-240 mg/day PO; titrate after 14 days; maintenance range usually 180-420 mg/day; not to exceed 540 mg/day\n\nTiazac, Taztia XT: 120-240 mg/day PO; titrate after 14 days; maintenance range usually 180-420 mg/day; not to exceed 540 mg/day\n\nCardizem LA, Matzim LA: 180-240 mg/day PO; titrate after 14 days; maintenance range usually 120-540 mg/day\n\nExtended-release twice-daily dosing: 60-120 mg PO q12hr; may be adjusted after 14 days; maintenance range usually 240-360 mg/day\n\nContraindications:\nHypersensitivity\n\nWolff-Parkinson-White syndrome, Lown-Ganong-Levine syndrome, symptomatic severe hypotension (systolic BP <90 mm Hg), sick sinus syndrome (if no pacemaker), 2°/3° (if no pacemaker); heart blocknnPO: Acute MI and pulmonary congestionnnIV: Use in newborns (because of benzyl alcohol), concomitant beta-blocker therapy, cardiogenic shock, ventricular tachycardia (must determine whether origin is supraventricular or ventricular)	\N
65	Methyldopa	Initial: 250 mg PO q8-12hr for 2 days, increase q2Days PRN\n\nMaintenance: 250-1000 mg/day divided q6-12hr PO, usually no more than 3 g/day\n\nAdjust dosage frequency with renal impairment:\n\nCrCl >50 mL/min: q8hr\n\nCrCl 10-50 mL/min: q8-12hr\n\nCrCl <10 mL/min: q12-24hr\n\nContraindications:\n\nActive liver disease, liver disorders associated with previous methyldopa treatment\n\nHypersensitivity to methyldopa or other ingredients (eg, sulfites)\n\nPheochromocytoma\n\nConcomitant MAOIs	\N
66	Clonidine	Immediate-release tablets:\n0.1 mg PO q12hr\nRange: 0.1-0.2 mg/day q12hr; not to exceed 2.4 mg/day\nTransdermal:\nApply 1 patch q7Days; start with 0.1 mg; increase by 0.1 mg after q1-2Week interval; usual dose range is 0.1-0.3 mg qWeek	\N
64	Guanfacine	Tenex: 1 mg PO qHS; may increase to 2 mg after 3-4 weeks\n\nUsual range 0.5-2 mg/day\n\nDo not exceed 3 mg qDay due to increased risk of adverse effects\n\nContraindications:\nHypersensitivity	\N
67	Moxonidine	Treatment must be instituted with the lowest dose of Moxonidine. This means a daily dose of 0.2 mg moxonidine in the morning. If the therapeutic effect is insufficient, the dose can be increased after three weeks to 0.4 mg. This dose can be given as a single dose (to be taken in the morning) or as a divided daily dose (morning and evening). If the results are still insufficient after a further three weeks treatment, the dose can be increased further to a maximum of 0.6 mg given divided in the morning and evening. A single dose of 0.4 mg Moxonidine and a daily dose of 0.6 mg Moxonidine should not be exceeded.\n\nRenal impairment:\n\nIn patients with moderately impaired renal function (GFR > 30 ml/min but < 60 ml/min), the single dose should be not more than 0.2 mg and the daily dose not more than 0.4 mg moxonidine.\n\nMoxonidine is contraindicated in patients with:\n\n- hypersensitivity to the active substance or to any of the excipients listed in section 6.1\n- sick sinus syndrome\n- bradycardia (resting heart rate <50 beats/minute)\n- AV-block 2nd and 3rd degree\n- cardiac insufficiency	\N
\.


SELECT pg_catalog.setval('ref.drug_id_seq', 8589, true);


ALTER TABLE ONLY ref.drug
    ADD CONSTRAINT drug_name_key UNIQUE (name);


ALTER TABLE ONLY ref.drug
    ADD CONSTRAINT drug_pkey PRIMARY KEY (id);


