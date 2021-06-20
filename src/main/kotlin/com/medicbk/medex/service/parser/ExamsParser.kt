package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Document
import com.medicbk.medex.model.Section

interface ExamsParser {
    fun parse(sections: Collection<Section>): List<Document.Field>
}
