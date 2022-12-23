# Apache server logs with Amazon CloudWatch Logs Insights

## Pre-requisites

1. Server Ubuntu wiith ServerApache

```console
$ sudo apt update
$ sudo apt install apache2
$ sudo systemctl start apache2
$ sudo systemctl status apache2
```

2. Create IAMRole with Policys and attach to Server EC2 Instance.

    - CloudWatchAgentServerPolicy

3. Install CloudWatchAgent

```console
$ wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
$ sudo dpkg -i -E ./amazon-cloudwatch-agent.deb
$ sudo systemctl status amazon-cloudwatch-agent
```

Link -> <https://docs.aws.amazon.com/es_es/AmazonCloudWatch/latest/monitoring/download-cloudwatch-agent-commandline.html>

## Process

1. The Log Agent uses a config file located at

```console
$ sudo nano /opt/aws/amazon-cloudwatch-agent/bin/config.json
```

```json
{
     "agent": {
         "run_as_user": "root"
     },
     "logs": {
         "logs_collected": {
             "files": {
                 "collect_list": [
                     {
                         "file_path": "/var/log/apache2/error.log",
                         "log_group_name": "/aws/apache2-error-log",
                         "log_stream_name": "{instance_id}"
                     },
                     {
                         "file_path": "/var/log/apache2/access.log",
                         "log_group_name": "/aws/apache2-access-log",
                         "log_stream_name": "{instance_id}"
                     }
                 ]
             }
         }
     }
 }
```

```console
$ sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json -s
```

- Dato: Los logs veran tanto en el server como en CloudWatch Logs.
