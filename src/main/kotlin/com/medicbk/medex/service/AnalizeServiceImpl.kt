package com.medicbk.medex.service

import com.medicbk.medex.service.handler.DataHandler
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class AnalizeServiceImpl : AnalizeService {

    @Autowired
    private lateinit var documentService: DocumentService

    @Autowired
    private lateinit var handlers: List<DataHandler>

    override fun analize(content: String): List<Analize> {
        val document = documentService.getDocument(content)
        val analizes = mutableListOf<Analize>()
        handlers.forEach { handler -> handler.handle(document).also { analizes.add(it) } }
        return analizes
    }
}