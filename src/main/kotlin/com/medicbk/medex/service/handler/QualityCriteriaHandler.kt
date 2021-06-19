package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize
import org.springframework.stereotype.Component

@Component
class QualityCriteriaHandler : DataHandler {
    override fun handle(document: Document): Analize =
        Analize(
            title = "Критерии качества",
            items = listOf(
                Analize.Item(
                    "Выполнен осмотр врачом-кардиологом не позднее 10 минут от момента поступления в стационар",
                    checked = false
                ),
                Analize.Item(
                    "Выполнен анализ крови биохимический общетерапевтический (кальций, магний, калий, натрий)",
                    checked = true
                ),
                Analize.Item(
                    "Выполнено электрокардиографическое исследование не позднее 10 минут от момента поступления в стационар",
                    checked = false
                ),
                Analize.Item(
                    "Проведена электроимпульсная терапия и/или временная/постоянная электрокардиостимуляция и/или проведена терапия антиаритмическими лекарственными препаратами внутривенно не позднее 30 минут от момента поступления в стационар (в зависимости от медицинских показаний и при отсутствии медицинских противопоказаний)",
                    checked = false
                )
            ),
            type = Analize.Type.STANDARD
        )
}