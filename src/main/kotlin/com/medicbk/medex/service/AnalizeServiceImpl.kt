package com.medicbk.medex.service

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.handler.DataHandler
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import java.time.LocalDate
import java.time.LocalTime

@Service
class AnalizeServiceImpl : AnalizeService {

    @Autowired
    private lateinit var handlers: List<DataHandler>

    override fun analize(content: String): List<Analize> {
        val document = Document(
            date = LocalDate.now(),
            time = LocalTime.now(),
            diagnosis = ""
        )

        val analizes = mutableListOf<Analize>()
        handlers.forEach { handler -> handler.handle(document).also { analizes.add(it) } }
        return analizes
    }
}