# simple-http-servers

Simple "Hello, world!" HTTP servers in various programming languages

## Running on z/OS

1. Install [zowe-api-dev](https://www.npmjs.com/package/@zowedev/zowe-api-dev):

        npm install -g @zowedev/zowe-api-dev

2. Initialize the user settings:

        zowe-api-dev init --account=<account-number>

3. Allocate zFS:

        zowe-api-dev zfs
