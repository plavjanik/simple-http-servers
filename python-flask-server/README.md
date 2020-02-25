# Python Flask Simple HTTP Server

- <https://palletsprojects.com/p/flask/>

## Dependencies

pip install flask

## Running locally

```sh
flask run port=11051
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
$ npx autocannon http://localhost:11052/greeting?name=SHARE -c 1 -d 60
Running 60s test @ http://localhost:11052/greeting?name=SHARE
1 connections

┌─────────┬──────┬──────┬───────┬──────┬─────────┬────────┬──────────┐
│ Stat    │ 2.5% │ 50%  │ 97.5% │ 99%  │ Avg     │ Stdev  │ Max      │
├─────────┼──────┼──────┼───────┼──────┼─────────┼────────┼──────────┤
│ Latency │ 1 ms │ 2 ms │ 3 ms  │ 4 ms │ 2.05 ms │ 0.9 ms │ 90.31 ms │
└─────────┴──────┴──────┴───────┴──────┴─────────┴────────┴──────────┘
┌───────────┬─────────┬───────┬─────────┬─────────┬─────────┬─────────┬─────────┐
│ Stat      │ 1%      │ 2.5%  │ 50%     │ 97.5%   │ Avg     │ Stdev   │ Min     │
├───────────┼─────────┼───────┼─────────┼─────────┼─────────┼─────────┼─────────┤
│ Req/Sec   │ 187     │ 303   │ 361     │ 395     │ 355.25  │ 30.26   │ 187     │
├───────────┼─────────┼───────┼─────────┼─────────┼─────────┼─────────┼─────────┤
│ Bytes/Sec │ 30.9 kB │ 50 kB │ 59.6 kB │ 65.2 kB │ 58.6 kB │ 4.99 kB │ 30.9 kB │
└───────────┴─────────┴───────┴─────────┴─────────┴─────────┴─────────┴─────────┘

Req/Bytes counts sampled once per second.

21k requests in 60.22s, 3.52 MB read
16k errors (0 timeouts)
```
