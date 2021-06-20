package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Document
import com.medicbk.medex.model.Section
import com.medicbk.medex.repository.AdviceRep
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class AdviceParserImpl : AdviceParser {
    private val SECTION_ID = 4L

    @Autowired
    private lateinit var adviceRep: AdviceRep
    @Autowired
    private lateinit var dateTimeParserService: DateTimeParserService

    override fun parse(sections: Collection<Section>): List<Document.Field> {
        val content = sections.firstOrNull { it.id == SECTION_ID }?.content ?: return emptyList()

        return adviceRep.getAll().mapNotNull { rec ->
            Regex("""${rec.name}\s*\(${DateTimeParserServiceImpl.DATE_WITH_TIME_PATTERN}\)""")
                .findAll(content).toList()
                .map { mResult ->
                    val dateAndTime = dateTimeParserService
                        .parseDateAndTime(mResult.groupValues[1] + " " + mResult.groupValues[2])
                    if(dateAndTime.first != null) {
                        Document.Field(rec.id, rec.name, dateAndTime.first, dateAndTime.second)
                    } else {
                        null
                    }
                }.firstOrNull()
        }
    }
}
