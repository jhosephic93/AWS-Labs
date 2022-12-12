# INSTALL AWS SAM CLI | LINUX

```console
$ wget https://github.com/aws/aws-sam-cli/releases/latest/download/aws-sam-cli-linux-x86_64.zip
$ sudo apt-get install unzip
$ unzip aws-sam-cli-linux-x86_64.zip -d sam-installation
$ sudo ./sam-installation/install
$ sam --version
```

# INSTALL AWS SAM CLI | MACOS HoomeBrew

```console
$ brew tap aws/tap
$ brew install aws-sam-cli
$ sam --version
```

# Example Deploy automatic

```console
$ nano package.sh
```

```bash
date=`date +%Y-%m-%d-%H-%M-%S`
bucket="cf-templates-1b5b7czg20rvt-us-west-2"
prefix="lambda-api-gateway/$date"
outputfile="master-package.yaml"
profile="applying-test"
 
sam package  \
--template-file master.yaml \
--s3-bucket $bucket \
--s3-prefix $prefix \
--output-template-file "packaged/$outputfile" \
--profile $profile
 
aws s3 cp packaged/$outputfile s3://$bucket/$prefix/$outputfile --profile $profile
 
echo "https://$bucket.s3.amazonaws.com/$prefix/$outputfile"
```