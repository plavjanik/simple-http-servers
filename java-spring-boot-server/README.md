# Java Spring Boot Simple HTTP Server Example

- <https://start.spring.io/>
- <https://spring.io/guides/gs/rest-service/>

## Building

```sh
./gradlew build
```

## Running locally

```sh
java -jar build/libs/java-spring-boot-server-0.0.1-SNAPSHOT.jar --server.port=11051
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

3. Deploy:

    ```sh
    zowe-api-dev deploy
    ```

4. Start:

    ```sh
    zowe-api-dev start
    ```

## Performance test on z/OS

```txt
$ npx autocannon http://localhost:11051/greeting?name=SHARE -c 1 -d 60
Running 60s test @ http://localhost:11051/greeting?name=SHARE
1 connections

┌─────────┬──────┬──────┬───────┬──────┬─────────┬─────────┬───────────┐
│ Stat    │ 2.5% │ 50%  │ 97.5% │ 99%  │ Avg     │ Stdev   │ Max       │
├─────────┼──────┼──────┼───────┼──────┼─────────┼─────────┼───────────┤
│ Latency │ 0 ms │ 0 ms │ 0 ms  │ 1 ms │ 0.04 ms │ 1.32 ms │ 653.38 ms │
└─────────┴──────┴──────┴───────┴──────┴─────────┴─────────┴───────────┘
┌───────────┬─────────┬────────┬─────────┬────────┬─────────┬─────────┬─────────┐
│ Stat      │ 1%      │ 2.5%   │ 50%     │ 97.5%  │ Avg     │ Stdev   │ Min     │
├───────────┼─────────┼────────┼─────────┼────────┼─────────┼─────────┼─────────┤
│ Req/Sec   │ 367     │ 505    │ 5503    │ 6595   │ 5057.42 │ 1619.45 │ 367     │
├───────────┼─────────┼────────┼─────────┼────────┼─────────┼─────────┼─────────┤
│ Bytes/Sec │ 76.5 kB │ 105 kB │ 1.16 MB │ 1.4 MB │ 1.07 MB │ 343 kB  │ 76.5 kB │
└───────────┴─────────┴────────┴─────────┴────────┴─────────┴─────────┴─────────┘

Req/Bytes counts sampled once per second.

303k requests in 60.73s, 64.1 MB read
```
