package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.model.TreatmentType
import com.medicbk.medex.service.Analize
import org.springframework.core.annotation.Order
import org.springframework.stereotype.Component

@Component
@Order(3)
class DrugsHandler : DataHandler {
    override fun handle(document: Document): Analize {
        val drugs = mutableListOf<Analize.Item>()
        document.treatment[TreatmentType.MEDICATION]?.forEach { treat ->
            drugs.add(Analize.Item(text = "${treat.name} ${treat.description}", false))
        }

        return Analize(
            title = "Назначенные препараты",
            items = drugs,
            type = Analize.Type.DRUGS
        )
    }
}