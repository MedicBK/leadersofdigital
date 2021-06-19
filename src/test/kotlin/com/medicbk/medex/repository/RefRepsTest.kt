package com.medicbk.medex.repository

import org.junit.jupiter.api.Assertions.assertTrue
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class RefRepsTest {

    @Autowired
    private lateinit var sectionRep: SectionRep

    @Autowired
    private lateinit var examRep: ExamRep

    @Autowired
    private lateinit var adviceRep: AdviceRep

    @Autowired
    private lateinit var treatmentRep: TreatmentRep

    @Test
    fun `verify get sections`() {
        sectionRep.getAll().also { assertTrue(it.isNotEmpty()) }
    }

    @Test
    fun `verify get exams`() {
        examRep.getAll().also { assertTrue(it.isNotEmpty()) }
    }

    @Test
    fun `verify get advices`() {
        adviceRep.getAll().also { assertTrue(it.isNotEmpty()) }
    }

    @Test
    fun `verify get treatments`() {
        treatmentRep.getAll().also { assertTrue(it.isNotEmpty()) }
    }
}