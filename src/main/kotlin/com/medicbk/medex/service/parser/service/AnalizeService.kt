package com.medicbk.medex.service.parser.service

interface AnalizeService {
    fun analize(content: String): Map<String, Any>
}