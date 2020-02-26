import Kitura

let router = Router()

router.get("/greeting") { request, response, next in
    response.send("Hello, world!")
    next()
}

Kitura.addHTTPServer(onPort: 11055, with: router)
Kitura.run()
