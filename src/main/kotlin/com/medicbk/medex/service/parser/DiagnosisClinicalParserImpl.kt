package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Document
import com.medicbk.medex.model.Section
import org.springframework.stereotype.Service

@Service
class DiagnosisClinicalParserImpl : DiagnosisClinicalParser {
    private val SECTION_ID = 2L

    override fun parse(sections: Collection<Section>): Document.DiagnosisClinicalField {
        val section = sections.firstOrNull { it.id == SECTION_ID }
        var content = section?.content
        return if(content != null) {
            content = content.trimStart()
            val parts = content.split("(")
            val mkbEnd = parts[1].indexOf(")")
            val mkb = parts[1].substring(0, mkbEnd).trimEnd()
            Document.DiagnosisClinicalField(section!!.title, mkb)
        } else {
            return Document.DiagnosisClinicalField("", "")
        }
    }
}