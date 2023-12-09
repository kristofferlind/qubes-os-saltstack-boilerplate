#/bin/bash
set -eu

NIXQUBED_USER=$(whoami)
NIXQUBED_DEVELOPMENT_QUBE="development-nixqubed"

echo "Update self"
qvm-run --pass-io $NIXQUBED_DEVELOPMENT_QUBE 'cat /home/user/development/qubes-os-saltstack-boilerplate/scripts/update-saltstack.sh' > update-saltstack.sh

echo "Packaging files.."
qvm-run --verbose --pass-io $NIXQUBED_DEVELOPMENT_QUBE '/home/user/development/qubes-os-saltstack-boilerplate/scripts/package.sh'

echo "Copy package"
qvm-run --verbose --pass-io $NIXQUBED_DEVELOPMENT_QUBE 'cat /home/user/nixqubed.tar' > /home/$NIXQUBED_USER/nixqubed.tar

echo "Clean directory"
sudo rm -r /srv/user_salt
sudo mkdir -p /srv/user_salt

echo "Unpack package into /srv/user_salt"
sudo tar -xf nixqubed.tar -C /srv/user_salt

echo "Remove package"
rm nixqubed.tar

echo "Enable top files"
sudo qubesctl top.enable templates
sudo qubesctl top.enable qubes

# echo "Apply target states"
# sudo qubesctl --targets template-dev state.highstate

echo "Apply all states"
sudo qubesctl --all state.highstate
