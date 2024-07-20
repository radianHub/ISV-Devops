sf package version promote -p $1 --json

sf package version list -p 0HoVT00000000Pp0AI -c 0 --verbose --json

echo "Install Link: https://login.salesforce.com/packaging/installPackage.apexp?p0=$1"