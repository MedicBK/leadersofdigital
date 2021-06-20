package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize
import org.springframework.core.annotation.Order
import org.springframework.stereotype.Component

@Component
@Order(3)
class DrugsHandler : DataHandler {
    override fun handle(document: Document): Analize =
        Analize(
            title = "Назначенные препараты",
            items = listOf(
                Analize.Item("Метопролол 50 мг утром", checked = true),
                Analize.Item("Ксарелто 20 мг 1 р/д", checked = true),
                Analize.Item("Левофлоксацин 500 мг 1 р/д", checked = false),
                Analize.Item("Эналаприл 10 мг 1 р/д", checked = false),
                Analize.Item("Аторвастатин 20 мг 1 р/д", checked = false),
                Analize.Item("Омепразол 20 мг 2 р/д", checked = false)
            ),
            type = Analize.Type.DRUGS
        )
}