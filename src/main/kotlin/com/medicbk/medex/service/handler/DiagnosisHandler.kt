package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize
import org.springframework.stereotype.Component

@Component
class DiagnosisHandler : DataHandler {
    override fun handle(document: Document): Analize =
        with(document.diagnosisClinical) { Analize("Клинический диагноз", "$name $mkb") }
}