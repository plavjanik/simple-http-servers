# simple-http-servers

Simple "Hello, world!" HTTP servers in various programming languages.

## Running on z/OS

Perform following instruction in the repository root to allocate the main zFS filesystem for all examples.

1. Install `zowe-api-dev` tool by following the instructions at [zowe-api-dev - Zowe API Development CLI Tool](https://github.com/zowe/sample-spring-boot-api-service/blob/master/zowe-rest-api-sample-spring/docs/devtool.md)

2. Initialize the user settings:

        zowe-api-dev init --account=<account-number>

3. Allocate zFS:

        zowe-api-dev zfs

Continue with instructions for your selected samples from their subdirectories.