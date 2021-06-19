package com.medicbk.medex.controller

import com.fasterxml.jackson.annotation.JsonProperty
import com.medicbk.medex.service.parser.service.AnalizeService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.CrossOrigin
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RestController

@RestController
@CrossOrigin(origins = ["*"])
class AnalizeController {

    @Autowired
    private lateinit var analizeService: AnalizeService

    @PostMapping("/analize")
    fun analize(@RequestBody epicrisis: Epicrisis): ResponseEntity<*> =
        epicrisis.content.takeIf { it.isNotBlank() }
            ?.let { content -> analizeService.analize(content).let { ResponseEntity.ok(Response(Response.ok, it)) } }
            ?: ResponseEntity.ok(Response(Response.error, "The content must not be empty!"))
}

data class Epicrisis(
    @JsonProperty("content")
    val content: String
)
