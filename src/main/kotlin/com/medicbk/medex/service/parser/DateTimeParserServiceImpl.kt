package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Section
import org.springframework.stereotype.Service
import java.time.LocalDate
import java.time.LocalTime
import java.time.format.DateTimeFormatter

@Service
class DateTimeParserServiceImpl : DateTimeParserService {
    private val SECTION_ID = 1L

    companion object {
        val DATE_WITH_TIME_PATTERN = """(\d{1,2}\.\d{1,2}\.\d{1,2})\s*(\d{1,2}:\d{1,2}:\d{1,2})?"""
    }

    override fun parse(sections: List<Section>): Pair<LocalDate?, LocalTime?> {
        val content = sections.firstOrNull { it.id == SECTION_ID }?.content
        return parseDateAndTime(content!!)
    }

    override fun parseDateAndTime(content: String): Pair<LocalDate?, LocalTime?> {
        val re = Regex(DATE_WITH_TIME_PATTERN)
        val groups = re.find(content)?.groupValues?.drop(1) ?: emptyList()
        return if(groups.isNotEmpty()) {
            val date = try {
                LocalDate.parse(groups[0], DateTimeFormatter.ofPattern("dd.MM.yy"))
            } catch(e: Exception) {
                null
            }
            val time = try {
                LocalTime.parse(groups[1], DateTimeFormatter.ofPattern("HH:mm:ss"))
            } catch(e: Exception) {
                null
            }
            date to time
        } else {
            null to null
        }
    }
}
