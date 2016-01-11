#!/bin/bash
set -e
if [ ! -f /opt/alfresco-5.0.d/alf_data/foo.txt ]; then
    cp -Rp /opt/alfresco-5.0.d/alf_data_back/* /opt/alfresco-5.0.d/alf_data;bash /install.sh;/tunerepo.sh;/modifinitpass.sh;/opt/alfresco-5.0.d/alfresco.sh start;/waitready.sh;/opt/alfresco-5.0.d/alfresco.sh stop;/tunesolr.sh;touch /opt/alfresco-5.0.d/alf_data/foo.txt
fi

# setting values for all the "-e ALF_xxx=..." parameters provided at startup
bash /tuneglobal.sh

