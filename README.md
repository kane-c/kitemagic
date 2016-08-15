# Kitemagic
This is a simple workaround to get Kitematic working on OS X without VirtualBox.

I tested it with [Dinghy](https://github.com/codekitchen/dinghy) via Parallels Desktop. **Just make sure your machine is called `default`.**

It's a good solution until [Kitematic#231](https://github.com/docker/kitematic/issues/231) is resolved.

## How it works
On OS X, if you're not using Docker for Mac, Kitematic checks for a VirtualBox installation.

This simply stubs VirtualBox to return the data that Kitematic expects, so it passes the setup stage and contiues to use Docker Machine as normal.

## Installation
1. Make sure VirtualBox is not installed ;)
2. Ensure you have a Docker Machine running called `default` (`docker-machine ls`).
3. Clone the repo or download `kitemagic.sh`.
4. `sh kitemagic.sh`
5. Open Kitematic.
