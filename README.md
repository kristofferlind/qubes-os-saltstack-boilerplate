# Qubes OS SaltStack boilerplate
Suggested starting point for managing your qubes with code.

## Looking for improvements
What I'm looking for with this approach is a smooth way of managing qubes on my machines. There are a few things I'm not entirely happy with and I even thought about making a terraform provider so that I can manage these resources with a tool I'm comfortable with, but it felt like that was straying a bit too far from the ordinary path.

A few examples of stuff that bothers me (please make a PR to improve it and teach me):
- having to keep track of state, if I remove the configuration for a qube, I want it gone
- quite a lot of overhead with vm configurations, could possibly use macros to minimize it a bit
- should packages be made to work for any distro or just divided by distro?
- a better solution for applying changes, please

# Apply configuration
The update script has been great for a smooth way of testing changes, run the script in dom0 and the changes are packaged, copied to dom0 and applied. It does so a bit wildly though and is absolutely a vector for attacking dom0 from that qube.

## Initial setup
In your saltstack development qube:
- `git clone --recursive https://github.com/kristofferlind/qubes-os-saltstack-boilerplate` clone the repository
- Modify ./scripts/update-saltstack.sh and ./scripts/package.sh to match your qube names and paths

In dom0:
- `sudo qubesctl state.sls qubes.user-dirs` enable salt user dirs
- `qvm-run --pass-io <qube-with-clone-of-boilerplate> 'cat <path to boilerplate clone>/scripts/update-saltstack.sh' > /home/user/update-saltstack.sh`  copy update script to dom0
- `chmod +x ./update-saltstack.sh` allow execute

## update (dom0)
- `./update-saltstack.sh` update and apply saltstack configuration

# Acknowledgements
My best resources for learning managing qubes with SaltStack were configurations published by other users.
- Thank you [drkhsh](https://drkhsh.at/) for publishing [salt-n-pepper](https://git.drkhsh.at/salt-n-pepper/)
- Thank you [unman](https://github.com/unman) for publishing [shaker](https://github.com/unman/shaker)
