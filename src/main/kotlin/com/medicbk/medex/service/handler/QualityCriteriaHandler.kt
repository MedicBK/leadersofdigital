package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize
import org.springframework.core.annotation.Order
import org.springframework.stereotype.Component

@Component
@Order(4)
class QualityCriteriaHandler : DataHandler {
    override fun handle(document: Document): Analize {
        val items = mutableListOf<Analize.Item>()
        val criteria = getCriteria()

        document.advices.find { it.id == 1L }?.let { field ->
            val fieldTime = field.time
            val docTime = document.time
            if (docTime != null) {
                if (fieldTime != null) {
                    val isDatesEquals = field.date == document.date
                    val isTimeEquals = document.time.plusMinutes(10) >= field.time
                    (isDatesEquals && isTimeEquals).let { items.add(Analize.Item(criteria[0], it)) }
                } else items.add(Analize.Item(criteria[0], false))
            }
        } ?: items.add(Analize.Item(criteria[0], false))

        Analize.Item(criteria[1], (document.exams.find { it.id == 3L } != null)).also { items.add(it) }

        document.exams.find { it.id == 2L }?.let { field ->
            val fieldTime = field.time
            val docTime = document.time
            if (docTime != null) {
                if (fieldTime != null) {
                    val isDatesEquals = field.date == document.date
                    val isTimeEquals = document.time.plusMinutes(10) >= field.time
                    (isDatesEquals && isTimeEquals).let { items.add(Analize.Item(criteria[2], it)) }
                } else items.add(Analize.Item(criteria[2], false))
            }
        } ?: items.add(Analize.Item(criteria[2], false))

        Analize.Item(criteria[3], false).also { items.add(it) }

        return Analize(
            title = "Критерии качества",
            items = items,
            type = Analize.Type.STANDARD
        )
    }

    private fun getCriteria(): List<String> =
        listOf(
            "Выполнен осмотр врачом-кардиологом не позднее 10 минут от момента поступления в стационар",
            "Выполнен анализ крови биохимический общетерапевтический (кальций, магний, калий, натрий)",
            "Выполнено электрокардиографическое исследование не позднее 10 минут от момента поступления в стационар",
            "Проведена электроимпульсная терапия и/или временная/постоянная электрокардиостимуляция и/или проведена терапия антиаритмическими лекарственными препаратами внутривенно не позднее 30 минут от момента поступления в стационар (в зависимости от медицинских показаний и при отсутствии медицинских противопоказаний)"
        )
}