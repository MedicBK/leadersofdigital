package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize
import org.springframework.beans.factory.annotation.Value
import org.springframework.core.annotation.Order
import org.springframework.stereotype.Component

@Component
@Order(1)
class ContaindicationsHandler : DataHandler {

    @Value("\${data.section.header.contra}")
    private lateinit var header: String

    override fun handle(document: Document): Analize =
        Analize(
            title = header,
            text = "Спиронолактон 25 мг 1 р/д - противопоказан при высоком уровне калия (5.79 ммоль/л). " +
                    "Биохимическое исследование крови (18.05.21)"
        )
}