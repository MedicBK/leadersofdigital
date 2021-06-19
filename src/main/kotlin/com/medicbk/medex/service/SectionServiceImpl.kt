package com.medicbk.medex.service

import com.medicbk.medex.model.Section
import com.medicbk.medex.repository.SectionRep
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class SectionServiceImpl : SectionService {
    @Autowired
    private lateinit var sectionRep: SectionRep

    override fun parseSections(srcText: String): List<Section> {
        val sectionRecords = sectionRep.getAll()
        val sectionsNames = sectionRecords.associate { it.id to it.name }
        // (pos -> id)
        val keywordsPositions = sectionRecords.map {
                srcText.indexOf(it.name, ignoreCase = true) to it.id
            }.sortedBy { it.first }
            .filter { it.first != -1 }

        return keywordsPositions.indices.map { i ->
            val pos = keywordsPositions[i].first
            val kWord = sectionsNames[keywordsPositions[i].second]!!
            val start = pos + kWord.length
            val end = if(i != keywordsPositions.indices.last) {
                keywordsPositions[i + 1].first + 1
            } else {
                srcText.length
            }
            val content = srcText.substring(start, end)

            Section(keywordsPositions[i].second, kWord, content)
        }
    }
}
