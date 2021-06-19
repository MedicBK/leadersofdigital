package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize
import org.springframework.stereotype.Component

@Component
class ContaindicationsHandler : DataHandler {
    override fun handle(document: Document): Analize =
        Analize(
            title = "Противопоказания",
            text = "Спиронолактон 25 мг 1 р/д - противопоказан при высоком уровне калия (5.79 ммоль/л). " +
                    "Биохимическое исследование крови (18.05.21)"
        )
}