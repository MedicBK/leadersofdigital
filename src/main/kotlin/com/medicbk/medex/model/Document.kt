package com.medicbk.medex.model

import java.time.LocalDateTime

data class Document(
    val dt: LocalDateTime,
    val diagnosis: DiagnosisField,
    val exams: List<Field> = emptyList(),
    val analyses: List<AnalysisField> = emptyList(),
    val advices: List<Field> = emptyList()
) {
    data class Field(
        val id: Long,
        val name: String,
        val dt: LocalDateTime
    )

    data class DiagnosisField(
        val name: String,
        val mkb: String
    )

    data class AnalysisField(
        val id: Long,
        val name: String,
        val dt: LocalDateTime,
        val result: String
    )
}
