
docker build -q -t test:latest .
docker run --cgroup-parent ddtest.slice -v /sys/fs/cgroup/ddtest.slice:/sys/fs/cgroup:rw --cap-add SYS_ADMIN test:latest