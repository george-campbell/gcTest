#!/bin/bash

sed -i 's/requiretty/!requiretty/g' /etc/sudoers



systemctl enable docker
systemctl start docker

echo "Installation finished"