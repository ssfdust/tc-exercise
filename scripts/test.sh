#!/bin/sh
mkdir /sys/fs/cgroup/foo
bash -c "echo \$$ >> /sys/fs/cgroup/foo/cgroup.procs && curl www.baidu.com"
