#!/bin/bash
#!/usr/bin/bash

sudo mount.cifs //192.168.0.83/NAS-Music ~/Music -o user=guest -o pass=guest
sudo mount.cifs //192.168.0.83/NAS-Videos ~/Videos -o user=guest -o pass=guest
sudo mount.cifs //192.168.0.83/NAS-Images ~/Images -o user=guest -o pass=guest

echo "Network drives mounted"
