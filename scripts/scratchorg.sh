## CREATE SCRATCH ORG
project="rh-isvdevops"
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
scratchOrgName="$project-$branch"

# sf org create scratch -f [SCRATCH ORG DEF PATH] -a [ORG ALIAS] -y [DAYS ACTIVE] -w [WAIT TIME IN MINUTES]
sf org create scratch -f ./config/project-scratch-def.json -a "$scratchOrgName" -y 30 -w 60 -d

## DEPLOY FORCEAPP
# sf project deploy start -d [PATH] -o [TARGET ORG]
sf project deploy start -d force-app -o "$scratchOrgName"