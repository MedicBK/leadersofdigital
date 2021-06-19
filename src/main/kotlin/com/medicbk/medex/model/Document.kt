package com.medicbk.medex.model

import java.time.LocalDate
import java.time.LocalTime

data class Document(
    val date: LocalDate?,
    val time: LocalTime?,
    val diagnosis: String,
    val exams: List<Field> = emptyList(),
    val analyses: List<AnalysisField> = emptyList(),
    val advices: List<Field> = emptyList()
) {
    data class Field(
        val id: Long,
        val name: String,
        val date: LocalDate?,
        val time: LocalTime?,
    )

    data class AnalysisField(
        val id: Long,
        val name: String,
        val date: LocalDate?,
        val time: LocalTime?,
        val result: String
    )
}
