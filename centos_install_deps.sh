#!/bin/bash

sed -i 's/requiretty/!requiretty/g' /etc/sudoers


echo "Installation finished"