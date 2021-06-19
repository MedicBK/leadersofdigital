package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Document
import com.medicbk.medex.model.Section
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class DiagnosisConcParserImpl : DiagnosisConcParser {
    private val SECTION_ID = 7L

    @Autowired
    private lateinit var sectionService: SectionService

    override fun parse(sections: Collection<Section>): Document.DiagnosisConcField {
        return Document.DiagnosisConcField("", "")
    }
}