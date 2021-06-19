package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize
import org.springframework.stereotype.Component

@Component
class StandardsMkbHandler : DataHandler {
    override fun handle(document: Document): Analize =
        Analize(
            title = "Стандарт лечения МКБ 148.1",
            items = listOf(
                Analize.Item(
                    "Регистрация электрокардиограммы, Холтеровское мониторированиесердечного ритма",
                    checked = true
                ),
                Analize.Item("Анализ крови биохимический", checked = true),
                Analize.Item("Общий (клинический) анализ крови развернутый", checked = true),
                Analize.Item("Эхокардиография", checked = true),
                Analize.Item("Осмотр кардиолога", checked = false)
            ),
            type = Analize.Type.DRUGS
        )
}