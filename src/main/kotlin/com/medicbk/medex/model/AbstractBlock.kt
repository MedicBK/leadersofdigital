package com.medicbk.medex.model

abstract class AbstractBlock(
    val id: Long,
    val title: String,
    val content: String,
) {
    var children: List<AbstractBlock> = emptyList()
}
