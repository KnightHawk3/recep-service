package blue.melody.recep

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.SpringApplication

@SpringBootApplication
open class RecepService

fun main(args: Array<String>) {
	SpringApplication.run(RecepService::class.java, *args)
}