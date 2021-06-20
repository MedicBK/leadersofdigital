package com.medicbk.medex.model

import java.time.LocalDate
import java.time.LocalTime

enum class TreatmentType {
    MEDICATION,
    SURGICAL,
}

data class Document(
    val date: LocalDate?,
    val time: LocalTime?,
    val diagnosisClinical: DiagnosisClinicalField,
    val diagnosisConc: DiagnosisConcField,
    val exams: List<Field> = emptyList(),
    val analyses: List<AnalysisField> = emptyList(),
    val advices: List<Field> = emptyList(),
    val treatment: Map<TreatmentType, List<Treat>> = emptyMap()
) {
    data class Field(
        val id: Long,
        val name: String,
        val date: LocalDate?,
        val time: LocalTime?,
    )

    data class DiagnosisClinicalField(
        val name: String,
        val mkb: String,
    )

    data class DiagnosisConcField(
        val name: String,
        val content: String,
    )

    data class AnalysisField(
        val id: Long,
        val name: String,
        val date: LocalDate?,
        val time: LocalTime?,
        val result: String
    )

    data class Treat(
        val name: String,
        val description: String,
    )
}
