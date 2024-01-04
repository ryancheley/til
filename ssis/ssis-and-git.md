# SSIS and git

when migrating from SVN to git there can be issues when merge conflicts arise. This causes build/rebuild errors to occur and the workaround for it is to get the `dtsx` files from the original SVN repo and copy them into the git repo. This should be done one at a time to identify the source of the error. Once you can successfully (re)build the project you can commit the changes to git. 

While it might be obvious, this will destroy any changes you made. It's best to try the (re)build before making any changes