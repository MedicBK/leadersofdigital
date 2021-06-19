package com.medicbk.medex.service

import com.medicbk.medex.model.Document

interface DocumentService {
    fun getDocument(sourceText: String): Document
}
