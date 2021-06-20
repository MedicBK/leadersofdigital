package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize
import org.springframework.core.annotation.Order
import org.springframework.stereotype.Component

@Component
@Order(5)
class StandardsMkbHandler : DataHandler {

    override fun handle(document: Document): Analize {
        val items = mutableListOf<Analize.Item>()
        val standard = getStandard()

        val cardiogram = standard[0]
        document.exams.filter { it.id == 2L }.takeIf { it.isNotEmpty() }?.let { fields ->
            Analize.Item(cardiogram.name, cardiogram.count >= fields.size).also { items.add(it) }
        } ?: Analize.Item(cardiogram.name, false).also { items.add(it) }

        val blood = standard[1]
        document.exams.filter { it.id == 3L }.takeIf { it.isNotEmpty() }?.let { fields ->
            Analize.Item(blood.name, blood.count >= fields.size).also { items.add(it) }
        } ?: Analize.Item(blood.name, false).also { items.add(it) }

        val bloodUnfolded = standard[2]
        document.exams.filter { it.id == 3L }.takeIf { it.isNotEmpty() }?.let { fields ->
            Analize.Item(bloodUnfolded.name, bloodUnfolded.count >= fields.size).also { items.add(it) }
        } ?: Analize.Item(bloodUnfolded.name, false).also { items.add(it) }

        val echocardiography = standard[3]
        document.exams.filter { it.id == 1L }.takeIf { it.isNotEmpty() }?.let { fields ->
            Analize.Item(echocardiography.name, echocardiography.count >= fields.size).also { items.add(it) }
        } ?: Analize.Item(echocardiography.name, false).also { items.add(it) }

        val cardiologist = standard[4]
        document.advices.filter { it.id == 1L }.takeIf { it.isNotEmpty() }?.let { fields ->
            Analize.Item(cardiologist.name, cardiologist.count >= fields.size).also { items.add(it) }
        } ?: Analize.Item(cardiologist.name, false).also { items.add(it) }

        return Analize(
            title = "Стандарт лечения МКБ 148.1",
            items = items,
            type = Analize.Type.STANDARD
        )
    }

    private fun getStandard(): List<Requirement> =
        listOf(
            Requirement("Регистрация электрокардиограммы, Холтеровское мониторированиесердечного ритма", 2),
            Requirement("Анализ крови биохимический", 1),
            Requirement("Общий (клинический) анализ крови развернутый", 1),
            Requirement("Эхокардиография", 1),
            Requirement("Осмотр кардиолога", 9)
        )

    data class Requirement(
        val name: String,
        val count: Int
    )
}