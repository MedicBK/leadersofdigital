package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Document
import com.medicbk.medex.model.Section
import com.medicbk.medex.model.TreatmentType
import com.medicbk.medex.repository.TreatmentRep
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class TreatmentParserImpl : TreatmentParser {
    private val SECTION_ID = 5L

    @Autowired
    private lateinit var sectionService: SectionService
    @Autowired
    private lateinit var treatmentRep: TreatmentRep

    override fun parse(sections: Collection<Section>): Map<TreatmentType, List<Document.Treat>> {
        val treatsTypes = treatmentRep.getAll().map { it.name }
        val content = sections.firstOrNull { it.id == SECTION_ID }?.content
        return sectionService.parse(content!!, treatsTypes)
            .mapIndexed { index, sec ->
                val fixedContent = sec.content.replaceFirst(Regex("^: "), "")
                if(index == 0) {
                    fixedContent.split(Regex(",\\s+?"))
                        .map { drugDescr ->
                            val re = Regex("""(\W+)(.*)$""")
                            val groups = re.find(drugDescr)?.groupValues!!
                            TreatmentType.MEDICATION to Document.Treat(groups[1], groups[2])
                        }
                } else {
                    fixedContent.split(Regex(";\\s?"))
                        .map { drugDescr ->
                            val re = Regex("""(\W+)(.*)""")
                            val groups = re.find(drugDescr)?.groupValues!!
                            TreatmentType.SURGICAL to Document.Treat(groups[1], groups[1])
                        }
                }
            }.flatten()
            .groupBy({ it.first }, { it.second })
    }
}