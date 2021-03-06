package com.medicbk.medex

import com.medicbk.medex.repository.ExamRep
import com.medicbk.medex.repository.SectionRep
import com.medicbk.medex.service.DocumentService
import com.medicbk.medex.service.parser.*
import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.assertDoesNotThrow
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import java.time.LocalDate
import java.time.LocalTime
import java.time.format.DateTimeFormatter

@SpringBootTest
class SectionServiceTest {
    @Autowired
    private lateinit var sectionRep: SectionRep
    @Autowired
    private lateinit var sectionService: SectionService
    @Autowired
    private lateinit var dateTimeParserService: DateTimeParserService
    @Autowired
    private lateinit var examRep: ExamRep
    @Autowired
    private lateinit var examsParser: ExamsParser
    @Autowired
    private lateinit var documentService: DocumentService
    @Autowired
    private lateinit var diagnosisClinicalParser: DiagnosisClinicalParser
    @Autowired
    private lateinit var diagnosisConcParser: DiagnosisConcParser
    @Autowired
    private lateinit var treatmentParser: TreatmentParser
    @Autowired
    private lateinit var adviceParser: AdviceParser

    val sourceText = """
154-4
 Прием в отделение кардиолога(15.04.21 10:23:27):
Клинический диагноз: Основной. Постоянная форма фибрилляции предсердий, тахисистолический вариант. (МКБ I48.1)
Сопутствующий диагноз: Гипертоническая болезнь III, риск 4. ХСН IIА. Вероятная ТЭЛА от 22.04.2021 на фоне окклюзивного тромбоза суральных вен правой нижней конечности без формирования острого легочного сердца, риск смерти по PESI высокий. Правосторонняя инфаркт-пневмония в фазе клинической стабилизации. Правосторонний гидроторакс, ДН 0. Атеросклероз БЦА, стеноз ОСА справа 24%, слева 40%, ВСА справа 33%, слева 40%. ОПП преренальное от 22.04.2021г в стадии разрешения. Макрогематурия на фоне приема антикоагулянтов от 26.04.2021г. Сахарный диабет II типа впервые выявленный, целевой уровень HbA1c<7.5%. Окклюзивный тромбоз глубоких вен правой верхней конечности от 28.04.2021г в фазе реканализации. Острый окклюзивный тромбоз правой подключичной вены от 01.05.2021 в фазе реканализации. Эрозивный проктосигмоидит. Хронический геморрой II-III, осложненный свершившимся кровотечением. Прошивание сосудистой ножки геморроидального узла от 02.05.2021г. Диффузно-узловой нетоксический зоб 0ст. Посттравматическая аневризма правой поверхностной височной артерии.
 Ишемический (TOAST: кардиоэмболический) инсульт в бассейне левой средней мозговой артерии от 15.04.2021, ранний восстановительный период, сенсо-моторная афазия, глазодвигательные нарушения, центральный правосторонний гемипарез 0-1б.
 
Проведенные обследования:
УЗИ щитовидной железы (25.05.21). Диффузно-очаговые изменения щитовидной железы.
УЗДГ вен в/к (18.05.21). Эхопризнаки полной реканализации тромбоза правых подкожных вен: лучевой подкожной вены (от нижней трети до верхней трети предплечья), локтевой подкожной вены (от нижней трети до устья вены). Эхопризнаки не полной реканализации тромбоза кубитальной вены. Непорлная реканализация тромбоза правой плечевой вены в верхней трети плеча. Окклюзивный тромбоз левой лучевой подкожной вены (от локтевого сгиба до верхней трети предплечья). Окклюзивный тромбоз кубитальной вены слева. Флотации нет.
МСКТ ОГК (15.05.21). Уменьшение выраженности правостороннего гидроторакса, в сочетании с частичным восстановлением объема нижней доли правого легкого (с участками уплотнения — гиповентиляция). Сохраняется обширный участок консолидации S4 правого легкого. Атеросклероз аорты и коронарных артерий. Кардиомегалия. Инцендиталома правого надпочечника. Конкремент желчного пузыря.
УЗИ мягких тканей (11.05.21). Аневризма артерии правой надбровной области.
Rg органов грудной клетки (19.05.21): Осумкованный плевральный выпот справа. Признаки застойных явлений по МКК.
ФГДС (28.04.21). Эритематозная (очаговая) гастропатия, дуодено-гастральный рефлюкс.
ФКС (28.04.21). Эрозивный проктосигмоидит. Продолжающееся кровотечение из геморроидальных вен.
УЗИ почек (27.04.21). Диффузные изменения почек.
МСКТ головного мозга (15.04.21). МСКТ-признаки ОНМК по ишемическому типу в бассейне левой СМА, наружной заместительной гидроцефалии.
МСКТ головного мозга (16.04.21). МСКТ-признаки участка снижения плотности в лобной доле слева как проявление ОНМК по ишемическому типу в бассейне левой СМА, наружной заместительной гидроцефалии, атеросклероза, лейкоареоза.
МСКТ головного мозга (22.04.21). МСКТ-признаки инфаркта в бассейне СМА слева — ишемические участки лобной и теменной долей слева со снижением плотности в динамике; участка атрофии в затылочной доле слева, лейкоареоза, наружной гипотрофической гидроцефалии, церебрального атеросклероза.
УЗИ вен ног (18.05.21). Признаков тромбоза глубоких вен н/к не выявлено.
Эхокардиография (11.05.21). Уплотнение стенок аорты, створок аортального клапана, митрального клапана. Увеличены предсердия. Незначительная гипертрофия ЛЖ. Систолическая функция ЛЖ снижена. Диастолическая функция ЛЖ не оценивается. Зон гипо- и акинеза нет. Легочная гипертензия 1ст (35 мм.рт.ст.). Жидкости в перикарде нет.
УЗДГ сосудов головы и шеи (15.04.21). Атеросклероз БЦА, стеноз правой ВСА 33%, стеноз левой ВСА 40%.
ЭКГ (19.05.21 08:07:21)     {0- не соответствует время оказания услуги}ЭОС резко влево. Фибрилляция предсердий с ЧСС 71-214/мин (сред ЧЖС 160/мин). Неполная блокада левой ножки пучка Гиса с преимущественным поражением передней ветви.
ОАК (18.05.21). Лейкоциты 8.57 х 109/л, эритроциты 4.77 х 1012/л, гемоглобин 144 г/л, тромбоциты 163 х 109/л, нейтр 72.6%, лимф 15.4%, мон 11.0%, эо 0.1%, баз 0.9%.
СРБ (21.05.21). 44,5 мг/л.
Биохимическое исследование крови (18.05.21). Билирубин общий 12.0 мкмоль/л, СРБ 82.2 мг/л, общий белок 59.7 г/л, мочевина 5.4 ммоль/л, креатинин 66.7 мкмоль/л, калий 4.39 ммоль/л, натрий 136.4 ммоль/л, АЛТ 14.2 ЕД/л, АСТ 16.9 ЕД/л.
Биохимическое исследование крови (15.04.21).{1- анализ выполнен} Холестерин 4.0 ммоль/л, ЛПВП 1.31 ммоль/л, ЛПНП 2.26 ммоль/л, триглицериды 0.95 ммоль/л, индекс атерогенности 2.05.
Гемостаз (22.05.21). ПВ 18,9 сек, ПО 1,58, МНО 1,60, АПТВ 25,6 сек, фибриноген 618 мг/л.
Инфекционные маркеры вирусных гепатитов В, С, Trep. pallidum (16.04.21). Не выявлено.
ВИЧ 1, 2 антитела; антиген р24 ВИЧ 1 (16.04.21). Не выявлено.
Гликированный гемоглобин (27.04.211). 7,2%.
Гормоны щитовидной железы (21.05.21). ТТГ 5.09 мкМЕ/мл, свТ4 22.4 пмоль/л.
Группа крови (15.04.21). Группа А (II), резус-принадлежность положительная (+).
ОАМ (14.05.21). Уд. вес 1018, реакция 8.0, белок 0.28 г/л, глюкоза 0 ммоль/л, кетоны 0, лейкоциты 3-5 в п/зр, эритроциты 35-40,  слизь +.  
Гликемический профиль (25.05.21). 06.00- 4,1 ммоль/л, 11.00- 3,43 ммоль/л, 16.00- 4,3 ммоль/л, 21.00- 5,2 ммоль/л.
Тромбоэластограмма (01.05.21). В пробе цитрат-натив признаки гиперкоагуляции в фазе инициации образования сгустка, гиперфибриногенемия.
Исследование плевральной жидкости (14.05.21). Эритроциты 200-250 в п/зр, лейкоциты 80-100 в п/зр (нейтр 5%, эо 1%, мон 3%, лимф 91%), прозрачная, желтая, реакция Ривальта +, белок 26 г/л.
Анализ плевральной жидкости на КУМ (17.05.21). Не выявлены.
Бак. посев плевральной жидкости (18.05.21). Нет роста.
 
Консультации:
- Офтальмолог (15.05.21). Ангиопатия сетчатки по гипертоническому типу.
- Кардиолог (21.05.21), пульмонолог (18.05.21), колопроктолог (30.04.21). См. диагноз, рекомендации.
- Торакальный хирург (14.05.21). Правосторонний гидроторакс, субтотальный ателектаз нижней доли правого легкого, ДН 1. Произведена плевральная пункция, эвакуировано 750 мл серозного выпота.
- Ангиохирург (14.05.21). Посттравматическая аневризма правой поверхностной височной артерии. Показаний к экстренному оперативному лечению нет. 
 
Лечение: {0-отсутствует время лечения}
- Консервативное: Верошпирон 50 мг 1 р/д, Фуросемид 20 мг 1 р/д, Метопролол 50 мг утром и 25 мг вечером, Ксарелто 20 мг 1 р/д, Левофлоксацин 500 мг 1 р/д, Эналаприл 10 мг 1 р/д, Аторвастатин 20 мг 1 р/д, Омепразол 20 мг 2 р/д, Сульфасалазин 500 мг 2 таб 4 р/д, клизмы с Сульфасалазином на ночь, Дигоксин 0.025 мг 1 р/д, Лазован 2 мл 2 р/д ч/з небулайзер, мазь Левомеколь на область заднего прохода 2 р/д, Аспаркам 2 таб 4 р/д, п-п Рингера 500 мл 2 р/д в/в кап, р-р Мексидол 5 мл в/в 1 р/д, р-р Меронем 1000 мг 3 р/д в/в, р-р Эноксапарин натрия 0.6 мл 2 р/д п/к, р-р Фуросемид 40 мг в/в №2.
- Оперативное: Прошивание сосудистой ножки геморроидального узла 02.05.2021г; пункция правой плевральной полости 14.05.2021г.
 
Неврологический статус: Сенсо-моторная афазия. ЧН: глазные щели D=S, зрачки D=S, фотореакции сохранены. Объем движения глазных яблок с ограничением вправо. Нистагма нет. Нижнелицевая асимметрия справа. Язык по средней линии. Бульбарных расстройств не выявлено. Активные движения в левых конечностях в полном объеме, в правой руке отсутствуют, в правой ноге ограничены. Пассивные движения в руках и ногах в полном объеме. Сила в руках 5б слева, справа проксимально 2б, дистально 3б, в ногах 5б слева, справа 1б. Мышечный тонус снижен справа. Сухожильные периостальные рефлексы с рук средней живости D<S, с ног средней живости D<S. Симптом Бабинского справа. Менингеальные знаки достоверно не выявлены. Нарушения чувствительности, КП не оценить ввиду афазии. НФТО нет. 
Шкала Рэнкина при поступлении 5 баллов, при выписке 4 балла. 
ШРМ при выписке 5.
 
Рекомендации:
1.       Наблюдение невролога, терапевта, эндокринолога, хирурга по месту жительства.
2.       УЗИ сосудов шеи 1 р/год амбулаторно.
3.       Контроль гликемии 3 р/д. При гликемии более 10 ммоль/л консультация эндокринолога по месту жительства для подбора гипогликемической терапии. Контроль ТТГ, свТ4, УЗИ щитовидной железы амбулаторно через 3 месяца.
4.       Контроль МСКТ ОГК амбулаторно через 1 месяц с консультацией хирурга по месту жительства.
5.       Наблюдение аневризмы височной артерии хирургом по месту жительства в динамике. При увеличении размеров — оперативное лечение в плановом порядке.
6.       Продолжить прием таб. Сульфасалазин 500 мг 2 таб 4 р/д 1 месяц, клизмы с Сульфасалазином (5 таб измельчить и растворить в 250 мл теплой воды) на ночь 1 месяц. Мазь Левомеколь на область заднего прохода 2 р/д 1 месяц.
7.       Адекватный питьевой режим. Прием жидкости не более 1200 мл/сут (питьевая вода + питание), диурез 1500-2000 мл/сут. Диета с ограничением животных жиров, сладкого, сдобы. Низкохолестериновая диета. Ограничение потребления соли до 4 г/сут. 
8.       Постель без крошек и складок, противопролежневый матрац, частая смена положения (1 раз в 2 часа), правильная укладка пациента в кровати. 
9.       Профилактика тромбоэмболических осложнений: ношение компрессионных чулок 2 класса компрессии, либо эластическое бинтование ног до н/3 бедра; возвышенное положение нижних конечностей. 
10.     Продолжить занятия ЛФК, реабилитационные мероприятия амбулаторно. Расширение двигательной активности: самостоятельные повороты в кровати, присаживание в кровати, удержание равновесия в положении сидя. Занятия с афазиологом.
11.     Контроль АД, ЧСС 2 р/д, ведение дневника АД. Постоянный прием таб. Эналаприл 10 мг утром под контролем АД. Целевое АД 120-130/80 мм.рт.ст. При повышении АД >140/90 мм рт. ст. - прием Каптоприла 25 мг под язык 1 таб. При стойком повышении АД – консультация терапевта по месту жительства для коррекции гипотензивной терапии. При стойкой гипотонии менее 110/70 мм.рт.ст. отменить Эналаприл.
12.     Постоянный прием таб. Дигоксин 0.025 мг 1 таб утром, таб. Метопролол 50 мг утром и 25 мг вечером под контролем ЧСС, терапевта по месту жительства.  ЧСС не менее 55/мин.
13.     Постоянный прием таб. Фуросемид 20 мг утром, таб. Верошпирон 50 мг утром под контролем диуреза, электролитов крови.
14.     Постоянный прием таб. Ривароксабан (Ксарелто) 20 мг 1 р/д под контролем терапевта по месту жительства.
15.     Постоянный прием таб. Розувастатин 10 мг 1 таб вечером под контролем АЛТ, АСТ, КФК, липидов крови х 1р/мес. При превышении трансаминаз более трех норм коррекция терапии терапевтом по месту жительства.
16.     Прием нейрометаболической терапии курсами 2-3 раза в год:
- Прием таб. Глицин 100 мг 2 таб 3 р/д – 1 месяц.
- Прием таб. Этилметилгидроксипиридина сукцинат (Мексидол) 125 мг 1 таб 3 р/д – 1 месяц.
                                                                                                                    
Диспансерное наблюдение в организации, обеспечивающей первичную медико-санитарную помощь по месту жительства, согласно приказу № 3071 МЗ НСО от 23.09.2019 «О внедрении в практику регионального стандарта по лекарственному обеспечению пациентов, перенесших острый коронарный синдром, ишемический инсульт в течение 12 месяцев после перенесенного сердечно-сосудистого события».
{}- Выполнение услуг согласно приказу 203Н
Выполнен осмотр врачом-кардиологом не позднее 10 минут от момента поступления в стационар ( 0 отсутствует осмотр кардиолога в выписном эпикризе)
Выполнен анализ крови биохимический общетерапевтический (кальций, магний, калий, натрий) (1- анализ выполнен) 
Выполнено электрокардиографическое исследование не позднее 10 минут от момента поступления в стационар (0-нарушено время оказания услуги)
Проведена электроимпульсная терапия и/или временная/постоянная электрокардиостимуляция и/или проведена терапия антиаритмическими лекарственными препаратами внутривенно не позднее 30 минут от момента поступления в стационар (в зависимости от медицинских показаний и при отсутствии медицинских противопоказаний)(0-нарушено время оказания услуги)
"""

    @Test
    fun `test parse sections`() {
        val expectedSize = sectionRep.getAll().size
        val blocks = sectionService.parse(sourceText)
        println("blocks count = ${blocks.size}")
        blocks.forEach { println("ID = ${it.id}\nTitle = ${it.title}\nContent = ${it.content}${"=".repeat(80)}") }
        assertEquals(expectedSize, blocks.size)
    }

    @Test
    fun `test parse date time`() {
        val expectedDate = LocalDate.parse("15.04.21",
            DateTimeFormatter.ofPattern("dd.MM.yy")
        )
        val expectedTime = LocalTime.parse("10:23:27",
            DateTimeFormatter.ofPattern("HH:mm:ss")
        )
        assertDoesNotThrow {
            val sections = sectionService.parse(sourceText)
            val dt = dateTimeParserService.parse(sections)
            assertEquals(expectedDate, dt.first)
            assertEquals(expectedTime, dt.second)
        }
    }

    @Test
    fun `test parse exams`() {
        val sections = sectionService.parse(sourceText)
        val expectedSize = examRep.getAll().size
        val exams = examsParser.parse(sections)
        println("exams count = ${exams.size}")
        exams.forEach { println("ID = ${it.id}\nname = ${it.name}\nDate = ${it.date}\nTime = ${it.time}${"=".repeat(80)}") }
        assertEquals(expectedSize, exams.size)
    }

    @Test
    fun `test clinical diagnosis service`() {
        val sections = sectionService.parse(sourceText)
        val diagClin = diagnosisClinicalParser.parse(sections)
        println(diagClin)
    }

    @Test
    fun `test concomitant diagnosis service`() {
        val sections = sectionService.parse(sourceText)
        val diagClin = diagnosisConcParser.parse(sections)
        println(diagClin)
    }

    @Test
    fun `test treats parser service`() {
        val sections = sectionService.parse(sourceText)
        val treats = treatmentParser.parse(sections)
        treats.forEach { treat ->
            treat.value.forEach { t ->
                println("type = ${treat.key}, name = ${t.name}, description = ${t.description}")
            }
        }
    }

    @Test
    fun `test advice parser service`() {
        val sections = sectionService.parse(sourceText)
        val advices = adviceParser.parse(sections)
        println("advices = $advices")
    }

    @Test
    fun `test doc service`() {
        val doc = documentService.getDocument(sourceText)
        println(doc)
    }
}
