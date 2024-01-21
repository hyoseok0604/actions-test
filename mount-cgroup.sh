#!/bin/bash

# Mount cgroup v2
echo "+memory +cpu" > /sys/fs/cgroup/cgroup.subtree_control

mkdir /sys/fs/cgroup/test

cd /sys/fs/cgroup/test

ls -al