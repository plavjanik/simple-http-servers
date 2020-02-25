# Python Flask Simple HTTP Server

- <https://developer.okta.com/blog/2018/11/15/node-express-typescript>

## Dependencies

pip install flask

## Running locally

```sh
PORT=11053 npm run start
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
$ npx autocannon http://localhost:11053/greeting?name=SHARE -c 1 -d 60
Running 60s test @ http://localhost:11053/greeting?name=SHARE
1 connections

┌─────────┬──────┬──────┬───────┬──────┬─────────┬─────────┬───────────┐
│ Stat    │ 2.5% │ 50%  │ 97.5% │ 99%  │ Avg     │ Stdev   │ Max       │
├─────────┼──────┼──────┼───────┼──────┼─────────┼─────────┼───────────┤
│ Latency │ 0 ms │ 0 ms │ 0 ms  │ 0 ms │ 0.01 ms │ 1.07 ms │ 559.67 ms │
└─────────┴──────┴──────┴───────┴──────┴─────────┴─────────┴───────────┘
┌───────────┬────────┬────────┬────────┬─────────┬─────────┬────────┬────────┐
│ Stat      │ 1%     │ 2.5%   │ 50%    │ 97.5%   │ Avg     │ Stdev  │ Min    │
├───────────┼────────┼────────┼────────┼─────────┼─────────┼────────┼────────┤
│ Req/Sec   │ 2519   │ 2829   │ 5075   │ 5607    │ 4891.65 │ 660.08 │ 2518   │
├───────────┼────────┼────────┼────────┼─────────┼─────────┼────────┼────────┤
│ Bytes/Sec │ 547 kB │ 614 kB │ 1.1 MB │ 1.22 MB │ 1.06 MB │ 143 kB │ 546 kB │
└───────────┴────────┴────────┴────────┴─────────┴─────────┴────────┴────────┘

Req/Bytes counts sampled once per second.

293k requests in 60.29s, 63.7 MB read
```
