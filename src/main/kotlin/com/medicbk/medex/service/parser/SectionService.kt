package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Section

interface SectionService {

    fun parse(srcText: String): List<Section>
}
