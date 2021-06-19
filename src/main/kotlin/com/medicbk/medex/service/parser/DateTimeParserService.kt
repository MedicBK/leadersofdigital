package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Section
import java.time.LocalDate
import java.time.LocalTime

interface DateTimeParserService {
    fun parse(sections: List<Section>): Pair<LocalDate?, LocalTime?>
}
