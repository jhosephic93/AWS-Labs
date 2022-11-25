# AWS CLI

## AWS CLI v1

1. Install

```console
$ sudo apt install awscli -y
$ aws configure list # Listar perfiles de aws
$ aws sts get-caller-identity --profile <profile>
```

2. Remove/Purge

```console
$ sudo apt purge awscli -y
$ sudo rm -rf /usr/local/aws
$ sudo rm /usr/local/bin/aws
$ sudo rm -r ~/.aws/
```

****

## Instalar AWS CLI v2

```console
$ curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
$ unzip awscliv2.zip
$ sudo ./aws/install
$ aws --version
```

1. Remove/Purge

```console
$ sudo rm /usr/local/bin/aws
$ sudo rm /usr/local/bin/aws_completer
$ sudo rm -rf /usr/local/aws-cli
$ sudo rm -rf ~/.aws/
```