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

        val cardiologist = criteria[0]
        document.advices.find { it.id == 1L }.let { field ->
            val fieldTime = field?.time
            val docTime = document.time
            if (docTime != null && fieldTime != null) {
                val isDatesEquals = field.date == document.date
                val isTimeEquals = document.time.plusMinutes(10) >= field.time
                (isDatesEquals && isTimeEquals).let { items.add(Analize.Item(cardiologist, it)) }
            }

        }

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