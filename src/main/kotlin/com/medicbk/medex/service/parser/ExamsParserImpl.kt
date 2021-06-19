package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Document
import com.medicbk.medex.model.Section
import com.medicbk.medex.repository.ExamRep
import com.medicbk.medex.service.parser.DateTimeParserServiceImpl.Companion.DATE_WITH_TIME_PATTERN
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class ExamsParserImpl : ExamsParser {
    private val SECTION_ID = 3L

    @Autowired
    private lateinit var examRep: ExamRep
    @Autowired
    private lateinit var dateTimeParserService: DateTimeParserService

    override fun parse(sections: Collection<Section>): List<Document.Field> {
        val content = sections.firstOrNull { it.id == SECTION_ID }?.content
        return if(content != null) {
            examRep.getAll().mapNotNull { exam ->
                Regex("""(${exam.name})\s*\(${DATE_WITH_TIME_PATTERN}\)""")
                    .findAll(content).toList()
                    .map { mResult ->
                        val dateAndTime = dateTimeParserService
                            .parseDateAndTime(mResult.groupValues[2] + " " + mResult.groupValues[3])
                        if(dateAndTime.first != null) {
                            Document.Field(exam.id, exam.name, dateAndTime.first, dateAndTime.second)
                        } else {
                            null
                        }
                    }.firstOrNull()
            }
        } else {
            emptyList()
        }
    }
}
