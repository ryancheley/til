# Require a Virtual Environment to install packages

On Mastodon today Trey Hunner [posted](https://mastodon.social/@treyhunner/112032637878747686) about disallowing pip install outside of a virutal enviroment. 

He posted a link to a [Stack Exchange post](https://unix.stackexchange.com/questions/492041/is-there-a-way-to-disable-pip-outside-of-a-virtual-environment) where I saw something I knew about, but always fail to implement. The use of an Environment Variable called `PIP_REQUIRE_VIRTUALENV`. I have used this on my MacBook Pro and in some linux servers, but somehow it's been overwritten so my system Python versions always have a ton of crap in them that they shouldn't. 

What I learned from the post is that there is also a pip configuration you can set. Per the post:

> As configuration option (which has my preference) like this, in e.g. ~/.config/pip/pip.conf or /etc/pip.conf:

> ```
> [global]
> require-virtualenv = True
> ```
> 
> You can also run this command to modify/create the configuration file for you:
> 
> ```
> pip config set global.require-virtualenv True
> ```

I spent about 20 minutes today cleaning up my system Python versions (3.8 - 3.12) and then enabled this to keep them clean going forward