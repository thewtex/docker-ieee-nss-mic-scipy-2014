#!/bin/sh

# Run the docker image in a container. The IPython notebook server will be
# available by pointing your browser to
#
#   https://localhost
#
# The default password is "science".  To use a different password, pass it in
# as an argument to this script.
password_arg=""
if [ $# -gt 1 ]; then
  password_arg="-e PASSWORD=$1"
fi

script_dir="`cd $(dirname $0);pwd`"
docker run -d -p 443:8888 -v $script_dir/..:/notebooks/:rw $password_arg ieee-nss-mic-scipy-2014
