package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Document
import com.medicbk.medex.model.Section
import com.medicbk.medex.model.TreatmentType

interface TreatmentParser {
    fun parse(sections: Collection<Section>): Map<TreatmentType, List<Document.Treat>>
}
