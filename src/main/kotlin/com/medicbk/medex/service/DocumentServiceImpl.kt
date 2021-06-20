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
    @Autowired
    private lateinit var treatmentParser: TreatmentParser
    @Autowired
    private lateinit var adviceParser: AdviceParser

    override fun getDocument(sourceText: String): Document {
        val sections = sectionService.parse(sourceText)

        val docDateTime = dtService.parse(sections)
        val date = docDateTime.first
        val time = docDateTime.second

        val exams = examsParser.parse(sections)

        val diagnosisClinical = diabClinParser.parse(sections)
        val diagnosisConc = diabConcParser.parse(sections)

        val analysis = emptyList<Document.AnalysisField>()

        val treatments = treatmentParser.parse(sections)

        val advices = adviceParser.parse(sections)

        return Document(
            date,
            time,
            diagnosisClinical,
            diagnosisConc,
            exams,
            analysis,
            advices,
            treatments,
        )
    }
}