use actix_web::{get, web, App, HttpServer, Responder};
use serde::Deserialize;
use std::env;

#[derive(Deserialize)]
pub struct GreetingRequest {
   name: String,
}

#[get("/greeting")]
async fn greeting(web::Query(info): web::Query<GreetingRequest>) -> impl Responder {
    format!("Hello, {}!", info.name)
}

#[actix_rt::main]
async fn main() -> std::io::Result<()> {
    let bind_address = match env::var("PORT") {
        Ok(port) => format!("0.0.0.0:{}", port),
        Err(_e) => format!("0.0.0.0:8080"),
    };
    HttpServer::new(|| App::new().service(greeting))
        .bind(bind_address)?
        .run()
        .await
}