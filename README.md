Unofficial i2p Dockerfile
=========================

This Dockerfile installs i2p from Debian sid, modifies it to let you access the
config interface from the host machine and runs it with nothing else changed.
It partly exists to be a way to map the i2p configuration pages.

This repository also contains a bunch of screenshots of the java i2p router's
web interface, automatically generated from near-defaults and run in a
container. The router these are attached to won't be running much, as I'm
deliberately publishing information from the router console. I'm doing it
because sometimes you need to circle something and write a note next to it, and
it seemed better to do it with pictures instead of spinning up a java i2p router
on my laptop(Where I use i2pd, it's tiny and old) just to take screenshots and
tear it down. Should you choose to use this image, your keys will be different
from the keys of the router in the images published in the screenshots.

To run from a clone,

    make build run
