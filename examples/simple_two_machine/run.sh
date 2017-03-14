#!/bin/bash
set -e

MODULE_NAME="simple_two_machine"
DIR="/tmp/shutit_built/space/git/shutitfile/examples/simple_two_machine"
DOMAIN="simple_two_machine.simple_two_machine"
DELIVERY="bash"
PATTERN="vagrant"

rm -rf $DIR

shutit skeleton --shutitfile simple_two_machine.sf --name ${DIR} --domain ${DOMAIN} --delivery ${DELIVERY} --pattern ${PATTERN} --vagrant_num_machines 2 --vagrant_machine_prefix machine

cd $DIR && ./run.sh "$@"
