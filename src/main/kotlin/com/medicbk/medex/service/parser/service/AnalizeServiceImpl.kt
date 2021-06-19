package com.medicbk.medex.service.parser.service

import org.springframework.stereotype.Service

@Service
class AnalizeServiceImpl : AnalizeService {
    override fun analize(content: String): Map<String, Any> {
        return mapOf("Hello" to content)
    }
}