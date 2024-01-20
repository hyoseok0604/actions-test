#!/bin/bash

if [ ! -d "/cgroups" ]; then
  mkdir /cgroups
fi

mount -t tmpfs cgroup_root /cgroups

if [ ! -d "/cgroups/memory" ]; then
  mkdir /cgroups/memory
fi

mount -t cgroup -o memory memory /cgroups/memory
chown -hR test:test /cgroups/memory
chmod -R +w /cgroups/memory

if [ ! -d "/cgroups/cpuacct" ]; then
  mkdir /cgroups/cpuacct
fi

mount -t cgroup -o cpuacct cpuacct /cgroups/cpuacct
chown -hR test:test /cgroups/cpuacct
chmod -R +w /cgroups/cpuacct

mount

ls /cgroups/memory