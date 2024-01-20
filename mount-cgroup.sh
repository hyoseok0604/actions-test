#!/bin/bash

# Mount cgroup v2
if [ ! -d "/cgroup" ]; then
  mkdir /cgroup
fi

mount -t cgroup2 none /cgroup

mount

ls /cgroups/memory