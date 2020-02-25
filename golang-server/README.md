# Golang Simple HTTP Server

- <https://golang.org/doc/articles/wiki/>
- <https://levelup.gitconnected.com/golang-on-mainframe-z-os-14276f747eb>

## Building locally

go build server.go

## Running locally

```sh
PORT=11053 ./server
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
$ npx autocannon http://localhost:11054/greeting?name=SHARE -c 1 -d 60
Running 60s test @ http://localhost:11054/greeting?name=SHARE
1 connections

┌─────────┬──────┬──────┬───────┬──────┬─────────┬─────────┬───────────┐
│ Stat    │ 2.5% │ 50%  │ 97.5% │ 99%  │ Avg     │ Stdev   │ Max       │
├─────────┼──────┼──────┼───────┼──────┼─────────┼─────────┼───────────┤
│ Latency │ 0 ms │ 0 ms │ 0 ms  │ 0 ms │ 0.01 ms │ 0.89 ms │ 482.49 ms │
└─────────┴──────┴──────┴───────┴──────┴─────────┴─────────┴───────────┘
┌───────────┬────────┬────────┬────────┬────────┬─────────┬────────┬────────┐
│ Stat      │ 1%     │ 2.5%   │ 50%    │ 97.5%  │ Avg     │ Stdev  │ Min    │
├───────────┼────────┼────────┼────────┼────────┼─────────┼────────┼────────┤
│ Req/Sec   │ 1975   │ 3631   │ 6343   │ 6759   │ 5973.42 │ 921.45 │ 1975   │
├───────────┼────────┼────────┼────────┼────────┼─────────┼────────┼────────┤
│ Bytes/Sec │ 257 kB │ 472 kB │ 825 kB │ 879 kB │ 776 kB  │ 120 kB │ 257 kB │
└───────────┴────────┴────────┴────────┴────────┴─────────┴────────┴────────┘

Req/Bytes counts sampled once per second.

358k requests in 60.42s, 46.6 MB read
```
