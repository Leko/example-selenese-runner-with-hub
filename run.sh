# https://discuss.circleci.com/t/docker-compose-run-exit-codes/2641/2
set -o errexit

selenese-runner \
  --baseurl $1 \
  --remote-browser $2 \
  --config /etc/selenese.conf \
  /usr/local/share/testsuite.html
