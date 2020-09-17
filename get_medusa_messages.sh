#!/bin/bash --login

source $HOME/bin/env.sh

cd $IDEALS_HOME

bundle exec rake medusa:fetch_messages > /dev/null 2>&1
