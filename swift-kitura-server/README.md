# Swift Kitura Simple HTTP Server

- <https://levelup.gitconnected.com/swift-on-the-mainframe-z-os-77d46139c3df>

## Running on z/OS

1. Follow the steps in the main [README.md](../README.md):

    ```sh
    npm install -g @zowedev/zowe-api-dev
    ```

2. Initialize the user settings:

    ```sh
    zowe-api-dev init --account=<account-number>
    ```

3. Build on z/OS:

    ```sh
    zowe-api-dev zosbuild
    ```

4. Deploy:

    ```sh
    zowe-api-dev deploy
    ```

5. Start:

    ```sh
    zowe-api-dev start
    ```

## Performance test on z/OS

```txt
$ npx autocannon http://localhost:11055/greeting?name=SHARE -c 1 -d 60
Running 60s test @ http://localhost:11055/greeting?name=SHARE
1 connections

┌─────────┬──────┬──────┬───────┬──────┬─────────┬─────────┬───────────┐
│ Stat    │ 2.5% │ 50%  │ 97.5% │ 99%  │ Avg     │ Stdev   │ Max       │
├─────────┼──────┼──────┼───────┼──────┼─────────┼─────────┼───────────┤
│ Latency │ 0 ms │ 0 ms │ 0 ms  │ 0 ms │ 0.02 ms │ 1.47 ms │ 637.65 ms │
└─────────┴──────┴──────┴───────┴──────┴─────────┴─────────┴───────────┘
┌───────────┬────────┬────────┬────────┬────────┬─────────┬─────────┬────────┐
│ Stat      │ 1%     │ 2.5%   │ 50%    │ 97.5%  │ Avg     │ Stdev   │ Min    │
├───────────┼────────┼────────┼────────┼────────┼─────────┼─────────┼────────┤
│ Req/Sec   │ 1358   │ 2147   │ 3435   │ 3781   │ 3278.99 │ 492.93  │ 1358   │
├───────────┼────────┼────────┼────────┼────────┼─────────┼─────────┼────────┤
│ Bytes/Sec │ 186 kB │ 294 kB │ 471 kB │ 518 kB │ 449 kB  │ 67.5 kB │ 186 kB │
└───────────┴────────┴────────┴────────┴────────┴─────────┴─────────┴────────┘

Req/Bytes counts sampled once per second.

197k requests in 60.16s, 26.9 MB read
```
