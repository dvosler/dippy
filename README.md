# dippy  -- A simple ansible deployment


### Project Requirments
Using Ansible and Docker create an automated solution that runs Nginx and PostgreSQL containers. As part of this automated solution, a test should be performed that verifies database connectivity and that Nginx is returning a web page (create your own or use the default page). The deployment of the entire automated solution should be executed as a single command.
 

Dependencies and Assumptions
------------------------------
#### Target Host
- must be a network connected asset
- should be running a functional [Ubuntu 20.04 LTS](https://ubuntu.com/download/server) OS
- docker-ce already installed
- Docker SDK for Python installed
#### Deployment Host
- must be able to login to the target host via SSH as root
- should really be using the current stable [ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) release

Usage:
-------------------------------
1.) Edit the _**ansible/hosts.ansible**_ file to reflect the IP(s) of the target(s)
```
[webserver]
127.0.0.1

[postgresql]
127.0.1.1
```
2.) execute the script
``` 
./dippy.sh
```


Directory Structure
----------------------------
```
.
├── ansible
│   ├── ansible.cfg
│   ├── hosts.ansible
│   ├── logs
│   │   └── dippy.log
│   └── plays
│       ├── databases
│       │   └── psql.yaml
│       ├── dippy.yaml
│       └── web
│           └── web.yaml
├── dippy.sh
├── LICENSE
├── README.md
└── screens
    └── dippy.png

```

Etymology of Poject Name
------------------------------

![preview1](screens/dippy.png)

