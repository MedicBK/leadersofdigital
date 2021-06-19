package com.medicbk.medex.service

import com.medicbk.medex.model.Section

interface ParseService {

    fun parseSections(srcText: String): List<Section>
}
