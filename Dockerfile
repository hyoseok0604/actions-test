FROM python:3.12-slim-bullseye

RUN groupadd -g 10001 test && \
  useradd -u 10000 -g test test

COPY --chown=test:test mount-cgroup.sh mount-cgroup.sh

ENTRYPOINT [ "./mount-cgroup.sh" ]