#!/bin/bash
# Git configuration
mkdir -p ~/git/
cd ~/git/
if [ $? = "0" ]; then
    git clone https://gitlab.rcslan.it/CDT/utilities.git
    git clone https://gitlab.rcslan.it/CDT/aws-terraform.git
    git clone https://gitlab.rcslan.it/CDT/terraform.git
    git clone https://gitlab.rcslan.it/CDT/solrcloud-config.git
    git clone https://gitlab.rcslan.it/CDT/Jenkinsfiles.git
else
 echo "Problem with folder creation"
fi

# SVN configuration
mkdir -p ~/svn/
cd ~/svn/
if [ $? = "0" ]; then
    svn co http://svn.farm-rcs.it/repos/ApacheAzure/
    svn co http://svn.farm-rcs.it/repos/DNS
    svn co http://svn.farm-rcs.it/repos/Wordpress/
    svn co http://svn.farm-rcs.it/repos/VarnishAzure/
    svn co http://svn.farm-rcs.it/repos/puppet/branches/current/puppet
    svn co http://svn.farm-rcs.it/repos/TomcatAzure
else
 echo "Problem with folder creation"
fi