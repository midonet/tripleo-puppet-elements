#!/bin/bash

echo "+++ Preparing to customize the base image"
rm -rf ./tripleo-puppet-elements
git clone -b stable/newton_midonet https://github.com/alejandroandreu/tripleo-puppet-elements.git
echo "+++ Please make sure that the variables in tripleo-puppet-elements/elements/overcloud-network-midonet/environment.d/02-midonet-envs.bash are correct before proceeding"
echo '+++ Then issue: `openstack overcloud image build --type overcloud-full --elements-path $ELEMENTS_PATH --builder-extra-args overcloud-network-midonet`'
