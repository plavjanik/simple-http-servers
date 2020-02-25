# Kotlin Ktor Simple HTTP Server Example

- <https://kotlinlang.org/>
- <https://ktor.io/>
- <https://start.ktor.io/#project-type=gradle-kotlin-dsl>

## Building

```sh
./gradlew build
```

## Running locally

```sh
java -jar build/libs/kotlin-ktor-server-0.0.1-all.jar -port 11050
```

## Running on z/OS

1. Follow the steps in the main [README.md](../README.md):

    ```sh
    npm install -g @zowedev/zowe-api-dev
    ```

2. Initialize the user settings:

    ```sh
    zowe-api-dev init --account=<account-number>
    ```

3. Allocate zFS:

    ```sh
    zowe-api-dev zfs
    ```

## Performance test on z/OS

```txt
$ npx autocannon http://localhost:11050/greeting?name=SHARE -c 1 -d 60
Running 60s test @ http://localhost:11050/greeting?name=SHARE
1 connections

┌─────────┬──────┬──────┬───────┬──────┬─────────┬─────────┬───────────┐
│ Stat    │ 2.5% │ 50%  │ 97.5% │ 99%  │ Avg     │ Stdev   │ Max       │
├─────────┼──────┼──────┼───────┼──────┼─────────┼─────────┼───────────┤
│ Latency │ 0 ms │ 0 ms │ 0 ms  │ 0 ms │ 0.02 ms │ 0.72 ms │ 258.51 ms │
└─────────┴──────┴──────┴───────┴──────┴─────────┴─────────┴───────────┘
┌───────────┬─────────┬─────────┬────────┬────────┬─────────┬─────────┬─────────┐
│ Stat      │ 1%      │ 2.5%    │ 50%    │ 97.5%  │ Avg     │ Stdev   │ Min     │
├───────────┼─────────┼─────────┼────────┼────────┼─────────┼─────────┼─────────┤
│ Req/Sec   │ 356     │ 642     │ 5083   │ 6831   │ 4958.72 │ 1437.77 │ 356     │
├───────────┼─────────┼─────────┼────────┼────────┼─────────┼─────────┼─────────┤
│ Bytes/Sec │ 41.3 kB │ 74.5 kB │ 590 kB │ 793 kB │ 575 kB  │ 167 kB  │ 41.3 kB │
└───────────┴─────────┴─────────┴────────┴────────┴─────────┴─────────┴─────────┘

Req/Bytes counts sampled once per second.

297k requests in 60.17s, 34.5 MB read
```
