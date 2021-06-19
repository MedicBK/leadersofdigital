package com.medicbk.medex

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class MedexApplication

fun main(args: Array<String>) {
	runApplication<MedexApplication>(*args)
}
