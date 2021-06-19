package com.medicbk.medex.service

import com.medicbk.medex.model.Section

interface SectionService {

    fun parseSections(srcText: String): List<Section>
}
