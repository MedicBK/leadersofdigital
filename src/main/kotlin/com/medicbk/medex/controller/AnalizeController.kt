package com.medicbk.medex.controller

import com.fasterxml.jackson.annotation.JsonProperty
import com.medicbk.medex.service.parser.service.AnalizeService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RestController

@RestController
class AnalizeController {

    @Autowired
    private lateinit var analizeService: AnalizeService

    @PostMapping("/analize")
    fun analize(@RequestBody epicrisis: Epicrisis): ResponseEntity<*> =
        analizeService.analize(epicrisis.content)
            .let { ResponseEntity.ok(Response(Response.ok, it)) }
}

data class Epicrisis(
    @JsonProperty("content")
    val content: String
)
