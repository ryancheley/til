Authorized Keys Can Restrict Actions

TLDR: You can use authorized-keys to restrict what is done when connecting via ssh

## Discovery
Saw a post on Mastodon and thought it might have some useful / interesting implications for the way I deploy code to my digital ocean droplets

## Explanation
Typically the `~/.ssh/authorized-keys` lists the public keys of the computers that can connect. However, you can also indicate where that key can be used from with either a domain name, and/or an IP address and indicate that commands can be run. 

This means that you can indicate that the user can only connect from a specific "location" and can only run specific code. This seems like a really good way to harden the security of your server. 

## Example
I'm going to use the example from the post below, but may update at a later time

```
from="x8dtu.example.org,10.1.1.1",command="/usr/local/sbin/rrsync -ro /usr/home/rsyncer/backups/bacula-database/postgresql/" ssh-ed25519 AAAAC3thisisalsonotmyrealpublickeybcxpFeUMAC2LOitdpRb9l0RoW7vt5hnzwt rsyncer@x8dtu.example.org
```

This says:

* when an ssh connection comes in from a client at x8dtu.example.org, or 10.1.1.1  
* run /usr/local/sbin/rrsync -ro /usr/home/rsyncer/backups/bacula-database/postgresql/  
* and that client must have this key (as shown)  
* rsyncer@x8dtu.example.org is a comment, and has no effect

## Why It Matters
Allowing access to your server, even when the user is not root, can have risks associated with it. This feature of authorized-keys can ensure that the user connecting can only do what you've indicated they can do

## Source
A post on Mastodon which linked to [this blog post](https://dan.langille.org/2025/04/17/using-ssh-authorized-keys-to-decide-what-the-incoming-connection-can-do/)
