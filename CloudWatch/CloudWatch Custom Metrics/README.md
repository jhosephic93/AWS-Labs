# CLOUDWATCH CUSTOM METRICS

1. Instalar CloudWatch-Agent | AMAZON LINUX2

```console
$ sudo su
# yum install amazon-cloudwatch-agent -y
# wget https://s3.amazonaws.com/amazoncloudwatch-agent/amazon_linux/amd64/latest/amazon-cloudwatch-agent.rpm
# sudo rpm -U ./amazon-cloudwatch-agent.rpm
# sudo nano /opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json
```

```json
{
  "metrics": {
    "namespace": "ECS Instance - EC2ContainerService-CLUSTER-ECS-MICLAROAPP",
    "append_dimensions": {
      "InstanceId": "${aws:InstanceId}"
    },
    "metrics_collected": {
      "mem": {
        "measurement": [
          "mem_used",
          "mem_used_percent",
          "mem_total"
        ]
      },
      "disk": {
        "resources": [
          "/"
        ],
        "measurement": [
          "disk_used",
          "disk_used_percent",
          "disk_total"
        ],
        "drop_device": true
      }
    }
  }
}
```

```bash
# sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json -s
```
