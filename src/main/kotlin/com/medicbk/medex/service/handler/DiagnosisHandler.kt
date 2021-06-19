package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize
import org.springframework.stereotype.Component

@Component
class DiagnosisHandler : DataHandler {
    override fun handle(document: Document): Analize =
        Analize(
            title = "Клинический диагноз",
            text = "Основной. Постоянная форма фибрилляции предсердий, тахисистолический вариант. (МКБ I48.1)"
        )
}