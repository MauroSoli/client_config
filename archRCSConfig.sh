#!/bin/bash
# Git configuration
mkdir -p ~/git/
if [ $? = "0" ]; then
    git     clone git@gitlab-internal.rcslan.it:CDT/utilities.git               ~/git/utilities
    git     clone git@gitlab-internal.rcslan.it:CDT/aws-terraform.git           ~/git/aws-terraform
    git lfs clone git@gitlab-internal.rcslan.it:CDT/terraform.git               ~/git/terraform 
    git     clone git@gitlab-internal.rcslan.it:CDT/solrcloud-config.git        ~/git/solrcloud-config
    git     clone git@gitlab-internal.rcslan.it:CDT/Jenkinsfiles.git            ~/git/Jenkinsfiles
    git     clone git@gitlab-internal.rcslan.it:CDT/varnish-configuration.git   ~/git/varnish-configuration
    git     clone git@gitlab-internal.rcslan.it:CDT/fastly-configurations/wfprcor.rcs.it.git            ~/git/fastly-configurations/wfprcor.rcs.it
    git     clone git@gitlab-internal.rcslan.it:CDT/fastly-configurations/meteo.corriere.it.git         ~/git/fastly-configurations/meteo.corriere.it
    git     clone git@gitlab-internal.rcslan.it:CDT/fastly-configurations/wfdvgaz-xalok.git             ~/git/fastly-configurations/wfdvgaz-xalok
    git     clone git@gitlab-internal.rcslan.it:CDT/fastly-configurations/wfdvgaz.git                   ~/git/fastly-configurations/wfdvgaz
    git     clone git@gitlab-internal.rcslan.it:CDT/fastly-configurations/prgaz.rcs.it.git              ~/git/fastly-configurations/prgaz.rcs.it
    git     clone git@gitlab-internal.rcslan.it:CDT/fastly-configurations/static-wfprcor.rcs.it.git     ~/git/fastly-configurations/static-wfprcor.rcs.it
    git     clone git@gitlab-internal.rcslan.it:CDT/xalok/image-building.git    ~/git/xalok/image-building
    git     clone git@gitlab-internal.rcslan.it:CDT/xalok/rcs-corriere.git      ~/git/xalok/rcs-corriere
    git     clone git@gitlab-internal.rcslan.it:CDT/xalok/rcs-gazzetta.git      ~/git/xalok/rcs-gazzetta
    git     clone git@gitlab-internal.rcslan.it:CDT/xalok/rcs-provision.git     ~/git/xalok/rcs-provision
    cd ..
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

# GKE configuration
gcloud init
clusters=$(gcloud container clusters list | grep -vE 'NAME.*LOCATION' | awk '{print $1}') 
for cluster in $clusters; do 
   gcloud container clusters get-credentials $cluster --region europe-west4 --project prod-268013
done 
