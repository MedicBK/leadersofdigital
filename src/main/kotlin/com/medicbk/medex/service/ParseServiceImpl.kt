package com.medicbk.medex.service

import com.medicbk.medex.model.Section
import org.springframework.stereotype.Service

@Service
class ParseServiceImpl : ParseService {
    val tmpRefBigBlocks = mapOf(
        1L to "Клинический диагноз",
        2L to "Сопутствующий диагноз",
        3L to "Проведенные обследования",
        4L to "Консультации",
        5L to "Лечение",
        6L to "Неврологический статус",
        7L to "Рекомендации",
    )

    override fun parseSections(srcText: String): List<Section> {
        // (pos -> id)
        val keywordsPositions = tmpRefBigBlocks.map {
                srcText.indexOf(it.value, ignoreCase = true) to it.key
            }.sortedBy { it.first }
            .filter { it.first != -1 }

        return keywordsPositions.indices.map { i ->
            val pos = keywordsPositions[i].first
            val kWord = tmpRefBigBlocks[keywordsPositions[i].second]!!
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
