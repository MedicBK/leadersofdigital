package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Document
import com.medicbk.medex.model.Section
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class DiagnosisConcParserImpl : DiagnosisConcParser {
    private val SECTION_ID = 6L

    @Autowired
    private lateinit var sectionService: SectionService

    override fun parse(sections: Collection<Section>): Document.DiagnosisConcField {
        val section = sections.firstOrNull { it.id == SECTION_ID }
        return if(section != null) {
            var content = section.content
            content = content
                .replaceFirst(Regex("^:\\s+"), "")
                .replace(Regex("\\s{2,}.*$"), "")
                .trim()
            Document.DiagnosisConcField(section.title, content)
        } else {
            Document.DiagnosisConcField("", "")
        }
    }
}