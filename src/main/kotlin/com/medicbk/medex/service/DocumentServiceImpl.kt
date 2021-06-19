package com.medicbk.medex.service

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.parser.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class DocumentServiceImpl : DocumentService {
    @Autowired
    private lateinit var sectionService: SectionService
    @Autowired
    private lateinit var dtService: DateTimeParserService
    @Autowired
    private lateinit var examsParser: ExamsParser
    @Autowired
    private lateinit var diabClinParser: DiagnosisClinicalParser
    @Autowired
    private lateinit var diabConcParser: DiagnosisConcParser

    override fun getDocument(sourceText: String): Document {
        val sections = sectionService.parse(sourceText)

        val docDateTime = dtService.parse(sections)
        val date = docDateTime.first
        val time = docDateTime.second

        val exams = examsParser.parse(sections)

        val diagnosisClinical = diabClinParser.parse(sections)
        val diagnosisConc = diabConcParser.parse(sections)

        return Document(date, time, diagnosisClinical, diagnosisConc, exams)
    }
}