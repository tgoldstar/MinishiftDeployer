
#!/bin/bash
echo "Starting cluster, default size"
minishift start
eval $(minishift oc-env)
oc login -u system:admin
echo "Trying to deploy a  sample nodeJS app"
oc new-app https://github.com/sclorg/nodejs-ex -l name=myapp
echo "If you want to kill the cluster just type minishift stop"
