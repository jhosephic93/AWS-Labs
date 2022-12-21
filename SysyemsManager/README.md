# SYSTEMS MANAGER

## Systems Manager

- **Inventory**. Permite la recopilación de instancias y detalle de su contenido.
- **State Manager**. Permite aplicar set’s de actualizaciones sobre instancias que deben mantener un estado especifico.
- **Automation**. Automatizacion de procesos de configuracion.
- **Run Command**. Permite la ejecución de actualizaciones de software sobre el Sistema Operativo, también permite la ejecución de Scripts de forma remota, incluye en On-Premise.
- **Maintenance Windows**. Ventana de tiempo en la que se ejecutan las actualizaciones.
- **Parameter Store**. Funciona como un deposito centralizado de parámetros en la consola que facilita su posterior acceso.
- **Patch Manager**. Ayuda a gestionar la aplicación de parches sobre el sistema operativo de múltiples instancias de forma simultánea. También permite especificar una ventana de tiempo para evitar que se genere interrupciones debido a la actualización del Sistema.

## Install SSM on CentOS 7.9

```console
$ sudo su
# sudo yum install nano -y
# yum install wget https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm -y
# sudo systemctl status amazon-ssm-agent
# sudo systemctl enable amazon-ssm-agent
# sudo systemctl start amazon-ssm-agent
# sudo systemctl status amazon-ssm-agent
```

Link de video que abarca los siguientes puntos. -> <https://youtu.be/ApDSInHEaQ4>

- SystemsManager
    - RunCommand
    - PatchManager
    - StateManager
    - FleetManager
    - SessionManager
