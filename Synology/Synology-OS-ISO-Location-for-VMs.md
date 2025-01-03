Synology OS iso Location for VMs

TLDR: The iso location can’t be in the home directory of a user

## Discovery

Trying to set up an Ubuntu 24.04 LTS VM on my synology

## Explanation

Synology allows you to have VMs running. In order to set up the VM you need to specify an iso image for the VM to use. 

This iso can’t be in the home directory of a user without causing the install to stall

## Why It Matters
You can't set up a VM if the iso is in your home directory

## Source
While setting up my Synology VMs I ran into the install failing at the same point each time. Once I moved it out of the home directory it worked as expected. 
