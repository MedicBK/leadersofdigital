package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Section
import java.time.LocalDateTime

interface DateTimeParserService {
    fun parse(sections: List<Section>): LocalDateTime?
}
