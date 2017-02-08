#!/bin/bash

echo "+++ Exporting necessary environment variables to build the base image"
export OS_YAML=/usr/share/openstack-tripleo-common/image-yaml/overcloud-images-rhel7.yaml
export DIB_LOCAL_IMAGE=rhel-guest-image-7.2-20151102.0.x86_64.qcow2
export DIB_NO_TMPFS=1
export ELEMENTS_PATH="/home/stack/tripleo-puppet-elements/elements:/usr/share/instack-undercloud:/usr/share/tripleo-image-elements:/usr/bin/../share/diskimage-builder/elements"

# RH Openstack subscription details
export REG_METHOD=portal
export REG_USER="USERNAME"
export REG_PASSWORD="PASSWORD"
export REG_POOL_ID="POOL_ID"
export REG_REPOS="rhel-7-server-rpms rhel-7-server-optional-rpms rhel-7-server-extras-rpms \
    rhel-ha-for-rhel-7-server-rpms rhel-7-server-openstack-10-rpms \
    rhel-7-server-rhceph-2-tools-rpms rhel-7-server-rhceph-2-mon-rpms"

# MidoNet specific variables
export DIB_MIDONET_stage=unstable
export DIB_MIDONET_version="5.4"
export DIB_MIDONET_openstack_version=newton
