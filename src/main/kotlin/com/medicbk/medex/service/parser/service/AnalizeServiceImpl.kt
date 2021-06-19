package com.medicbk.medex.service.parser.service

import com.medicbk.medex.service.parser.service.Analize.*
import com.medicbk.medex.service.parser.service.Analize.Type.*
import org.springframework.stereotype.Service

@Service
class AnalizeServiceImpl : AnalizeService {



    override fun analize(content: String): List<Analize> {

        return listOf(
            Analize(
                title = "Клинический диагноз",
                text = "Основной. Постоянная форма фибрилляции предсердий, тахисистолический вариант. (МКБ I48.1)"
            ),
            Analize(
                title = "Клинический диагноз",
                text = "Основной. Постоянная форма фибрилляции предсердий, тахисистолический вариант. (МКБ I48.1)"
            ),
            Analize(
                title = "Проведенные обследования",
                items = listOf(
                    Item("Эхокардиография (11.05.21)", checked = true),
                    Item("ЭКГ (19.05.21 08:07:21)", checked = true),
                    Item("Биохимическое исследование крови (18.05.21)", checked = true)
                ),
                type = EXAMS
            ),
            Analize(
                title = "Назначенные препараты",
                items = listOf(
                    Item("Метопролол 50 мг утром", checked = true),
                    Item("Ксарелто 20 мг 1 р/д", checked = true),
                    Item("Левофлоксацин 500 мг 1 р/д", checked = false),
                    Item("Эналаприл 10 мг 1 р/д", checked = false),
                    Item("Аторвастатин 20 мг 1 р/д", checked = false),
                    Item("Омепразол 20 мг 2 р/д", checked = false)
                ),
                type = DRUGS
            ),
            Analize(
                title = "Противопоказания",
                text = "Биохимическое исследование крови (18.05.21)"
            ),
            Analize(
                title = "Критерии качества",
                items = listOf(
                    Item(
                        "Выполнен осмотр врачом-кардиологом не позднее 10 минут от момента поступления в стационар",
                        checked = false
                    ),
                    Item(
                        "Выполнен анализ крови биохимический общетерапевтический (кальций, магний, калий, натрий)",
                        checked = true
                    ),
                    Item(
                        "Выполнено электрокардиографическое исследование не позднее 10 минут от момента поступления в стационар",
                        checked = false
                    ),
                    Item(
                        "Проведена электроимпульсная терапия и/или временная/постоянная электрокардиостимуляция и/или проведена терапия антиаритмическими лекарственными препаратами внутривенно не позднее 30 минут от момента поступления в стационар (в зависимости от медицинских показаний и при отсутствии медицинских противопоказаний)",
                        checked = false
                    )
                ),
                type = STANDARD
            ),
            Analize(
                title = "Стандарт лечения МКБ 148.1",
                items = listOf(
                    Item(
                        "Регистрация электрокардиограммы, Холтеровское мониторированиесердечного ритма",
                        checked = true
                    ),
                    Item("Анализ крови биохимический", checked = true),
                    Item("Общий (клинический) анализ крови развернутый", checked = true),
                    Item("Эхокардиография", checked = true),
                    Item("Осмотр кардиолога", checked = false)
                ),
                type = DRUGS
            )
        )
    }
}