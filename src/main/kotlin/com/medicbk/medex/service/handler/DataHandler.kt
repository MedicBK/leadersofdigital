package com.medicbk.medex.service.handler

import com.medicbk.medex.model.Document
import com.medicbk.medex.service.Analize

interface DataHandler {
    fun handle(document: Document): Analize
}