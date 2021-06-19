package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize
import org.springframework.stereotype.Component

@Component
class ExamsHandler : DataHandler {
    override fun handle(document: Document): Analize =
        Analize(
            title = "Проведенные обследования",
            items = listOf(
                Analize.Item("Эхокардиография (11.05.21)", checked = true),
                Analize.Item("ЭКГ (19.05.21 08:07:21)", checked = true),
                Analize.Item("Биохимическое исследование крови (18.05.21)", checked = true)
            ),
            type = Analize.Type.EXAMS
        )
}