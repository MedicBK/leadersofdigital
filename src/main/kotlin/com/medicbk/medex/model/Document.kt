package com.medicbk.medex.model

import java.time.LocalDate
import java.time.LocalTime

data class Document(
    val date: LocalDate?,
    val time: LocalTime?,
    val diagnosisClinical: DiagnosisClinicalField,
    val diagnosisConc: DiagnosisConcField,
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

    data class DiagnosisClinicalField(
        val name: String = "Основной. Постоянная форма фибрилляции предсердий, тахисистолический вариант.",
        val mkb: String = "МКБ I48.1",
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
}
