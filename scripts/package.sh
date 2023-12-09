#/bin/bash

set -eux

echo "Current working directory: $(pwd)"
tar -cf nixqubed.tar -C /home/user/development/qubes-os-saltstack-boilerplate/src .
