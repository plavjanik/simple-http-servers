package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func HelloHandler(w http.ResponseWriter, r *http.Request) {
	name := r.URL.Query().Get("name")
	if name == "" {
		name = "world"
	}
	fmt.Fprintf(w, "Hello, %s!", name)
}

func main() {
	http.HandleFunc("/greeting", HelloHandler)
	log.Println(os.ExpandEnv("Listening on port: ${PORT}"))
	err := http.ListenAndServe(os.ExpandEnv(":${PORT}"), nil)
	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}
}
