package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.repository.ExamRep
import com.medicbk.medex.service.Analize
import com.medicbk.medex.service.Analize.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.beans.factory.annotation.Value
import org.springframework.core.annotation.Order
import org.springframework.stereotype.Component

@Component
@Order(2)
class ExamsHandler : DataHandler {

    @Autowired
    private lateinit var examRep: ExamRep

    @Value("\${data.section.header.exams}")
    private lateinit var header: String

    override fun handle(document: Document): Analize {
        val exams = mutableListOf<Item>()
        examRep.getAll().forEach { exam ->
            document.exams.find { it.id == exam.id }
                ?.let { f ->
                    with(f) {
                        Item(
                            text = "$name (${time.takeIf { it != null }?.let { "$date $time" } ?: "$date"})",
                            checked = true
                        ).also { exams.add(it) }
                    }
                }
                ?: exams.add(Item(text = exam.name, checked = false))
        }

        return Analize(
            title = header,
            items = exams,
            type = Type.EXAMS
        )
    }
}