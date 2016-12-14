# [selenese-runner](https://github.com/vmi/selenese-runner-java) with [Selenium Hub](https://hub.docker.com/r/selenium/hub/)
[![CircleCI](https://circleci.com/gh/Leko/example-selenese-runner-with-hub/tree/master.svg?style=svg)](https://circleci.com/gh/Leko/example-selenese-runner-with-hub/tree/master)

Example of headless scenario testing used by [selenese-runner](https://github.com/vmi/selenese-runner-java) with [Selenium Hub](https://hub.docker.com/r/selenium/hub/)

## Features
- ✓ Less settings
- ✓ Support Japanese in screen shots

## Getting started
### Prerequirement
- [docker-compose](https://docs.docker.com/compose/install/)

### Install
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
|   |-- chrome/
|   |   `-- Dockerfile    # Build selenium/node-chrome with japanese support
|   |-- firefox/
|   |   `-- Dockerfile    # Build selenium/node-firefox with japanese support
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

## Contribution

1. Fork ([Leko/example-selenese-runner-with-hub](https://github.com/Leko/example-selenese-runner-with-hub/fork))
1. Create a feature branch
1. Commit your changes
1. Create new Pull Request to `master` branch
