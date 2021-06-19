package com.medicbk.medex.model

class Paragraph(
    id: Long,
    title: String,
    content: String,
) : AbstractBlock(id, title, content)