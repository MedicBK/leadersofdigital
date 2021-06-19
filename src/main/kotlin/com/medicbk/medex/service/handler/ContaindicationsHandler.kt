package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize
import org.springframework.stereotype.Component

@Component
class ContaindicationsHandler : DataHandler {
    override fun handle(document: Document): Analize =
        Analize(
            title = "Противопоказания",
            text = "Биохимическое исследование крови (18.05.21)"
        )
}