package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Document
import com.medicbk.medex.model.Section

interface DiagnosisClinicalParser {
    fun parse(sections: Collection<Section>): Document.DiagnosisClinicalField
}
