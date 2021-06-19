package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Section
import org.springframework.stereotype.Service
import java.time.LocalDateTime

@Service
class DateTimeParserServiceImpl : DateTimeParserService {
    private val SECTION_ID = 1L

    override fun parse(sections: List<Section>): LocalDateTime? {
        val content = sections.firstOrNull { it.id == SECTION_ID }?.content
        try {
            val re = Regex("""(\d{1,2})\.(\d{1,2})\.(\d{1,2})\s+(\d{1,2}):(\d{1,2}):(\d{1,2})""")
            val mResult = re.find(content!!)
            return if(mResult != null && mResult.groups.size == 7) {
                val drop = mResult.groupValues.drop(1)
                val numbers = drop.map { it.toInt() }
                var year = numbers[2]
                year = if(year < 100) 2000 + year else year
                LocalDateTime.of(year, numbers[1], numbers[0], numbers[3], numbers[4], numbers[5])
            } else {
                null
            }
        } catch(e: Exception) {
            throw Exception("Missed or bad date format in string: $content", e)
        }
    }
}