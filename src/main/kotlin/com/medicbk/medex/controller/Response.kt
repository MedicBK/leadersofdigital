package com.medicbk.medex.controller

import com.fasterxml.jackson.annotation.JsonIgnoreProperties
import com.fasterxml.jackson.annotation.JsonInclude

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
data class Response<out T>(val status: String = ok, val data: T? = null) {
    companion object {
        const val ok = "ok"
        const val error = "error"
    }
}