package com.medicbk.medex.service.parser

import com.medicbk.medex.model.Section
import com.medicbk.medex.repository.SectionRep
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class SectionServiceImpl : SectionService {
    @Autowired
    private lateinit var sectionRep: SectionRep

    override fun parse(srcText: String, sectionNames: Collection<String>): List<Section> {
        val sectionRecords = sectionRep.getAll()
        val names = if(sectionNames.isEmpty()) {
            sectionRecords.associate { it.id to it.name }
        } else {
            sectionNames.toList().associateBy { (Math.random() * 1e8).toLong() }
        }
        // (pos -> id)
        val keywordsPositions = names.map {
            srcText.indexOf(it.value, ignoreCase = true) to it.key
        }.sortedBy { it.first }
            .filter { it.first != -1 }

        return keywordsPositions.indices.map { i ->
            val pos = keywordsPositions[i].first
            val kWord = names[keywordsPositions[i].second]!!
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
