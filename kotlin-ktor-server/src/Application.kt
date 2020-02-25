package com.example

import io.ktor.application.*
import io.ktor.response.*
import io.ktor.routing.*

fun main(args: Array<String>): Unit = io.ktor.server.netty.EngineMain.main(args)

@Suppress("unused") // Referenced in application.conf
@kotlin.jvm.JvmOverloads
fun Application.module(testing: Boolean = false) {
    routing {
        get("/greeting") {
            val name: String =
                if (call.request.queryParameters["name"] != null) call.request.queryParameters["name"]!! else "world"
            call.respondText("Hello, $name!")
        }
    }
}

