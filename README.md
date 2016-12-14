# [selenese-runner](https://github.com/vmi/selenese-runner-java) with [Selenium Hub](https://hub.docker.com/r/selenium/hub/)
[![CircleCI](https://circleci.com/gh/Leko/example-selenese-runner-with-hub/tree/master.svg?style=svg)](https://circleci.com/gh/Leko/example-selenese-runner-with-hub/tree/master)

Example of headless scenario testing used by [selenese-runner](https://github.com/vmi/selenese-runner-java) with [Selenium Hub](https://hub.docker.com/r/selenium/hub/)

## Prerequirement
- [docker-compose](https://docs.docker.com/compose/install/)

## Getting started

```
git clone git@github.com:Leko/example-selenese-runner-with-hub.git
docker-compose build
docker-compose up -d chrome firefox
docker-compose up selenese
```

### More example
```
# baseurl=https://google.com, Run in Google Chrome
docker-compose run selenese run.sh https://google.com chrome

# baseurl=https://google.com, Run in Firefox
docker-compose run selenese run.sh https://google.com firefox
```

## Directory structure
```
|-- junit/                # JUnit report
|-- docker/
|   |-- hub/
|   |   `-- Dockerfile    # Build selenium/hub with japanese support
|   `-- selenese/
|       `-- Dockerfile    # Build selenese-runner runtime
|-- screenshots/
|   |-- all/              # Take screenshot for all step
|   `-- fail/             # Take screenshot for fail step only
|-- test/
|   |-- demo-fail.html    # Example of failure test
|   `-- demo-success.html # Example of success test
|-- circle.yml            # Example of CircleCI settings
|-- run.sh                # Wrapper to run selenese-runner command
|-- selenese.conf         # Config file for selenese-runner
|-- testsuite.html        # Testsuite
`-- user-extension.js     # rollup definition
```

## More information

Please read this article:  
[Selenium IDEで作ったテストをCLIで動かす方法](http://leko.jp/archives/908)
