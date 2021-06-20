package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize
import org.springframework.beans.factory.annotation.Value
import org.springframework.core.annotation.Order
import org.springframework.stereotype.Component

@Component
@Order(0)
class DiagnosisHandler : DataHandler {

    @Value("\${data.section.header.diag}")
    private lateinit var header: String

    override fun handle(document: Document): Analize =
        with(document.diagnosisClinical) { Analize(header, "$name $mkb") }
}