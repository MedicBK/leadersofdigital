package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Document
import com.medicbk.medex.model.Section
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class DiagnosisClinicalParserImpl : DiagnosisClinicalParser {
    private val SECTION_ID = 2L

    @Autowired
    private lateinit var sectionService: SectionService

    override fun parse(sections: Collection<Section>): Document.DiagnosisClinicalField {
        return Document.DiagnosisClinicalField()
    }
}