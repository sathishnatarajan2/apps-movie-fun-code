#!/bin/bash
apt-get update && apt-get install -y curl
set -ex

#if [ -z $ATTENDEE_SERVICE_URL ]; then
 # echo "ATTENDEE_SERVICE_URL not set"
 # exit 1
#fi


pushd moviefun-source
curl "http://moviefun-sn.apps.pikes.pal.pivotal.io.moviefun-sn"
  echo "smoke testing Movie fun app"
 # smoke-tests/bin/test $ATTENDEE_SERVICE_URL
popd

exit 0
