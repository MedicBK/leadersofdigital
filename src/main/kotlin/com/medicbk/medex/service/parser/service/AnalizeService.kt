package com.medicbk.medex.service.parser.service

import com.medicbk.medex.service.parser.service.Analize.Type.*

interface AnalizeService {
    fun analize(content: String): List<Analize>
}

data class Analize(
    val title: String,
    val text: String = "",
    val type: Type = BASE,
    val items: List<Item> = emptyList()
) {
    enum class Type {
        BASE, DRUGS, EXAMS, STANDARD
    }

    data class Item(
        val text: String,
        val checked: Boolean
    )
}