#!/bin/bash
## dippy.sh 
## 2021.09.17

help_and_exit ()
{ 
    echo "Usage: $0 [OPTION] "
    echo "Deploy things that do stuff."
    echo
    echo "-h --help            print this message and exit"
    exit
}

while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -h|--help)
    help_and_exit
    ;;
esac
done

ansiblecommand='ansible-playbook -v ansible/plays/dippy.yaml -i ansible/hosts_ansible.yaml --user=root'
echo ""
export ANSIBLE_CONFIG=ansible/ansible.cfg

echo "$ansiblecommand"
eval $ansiblecommand

