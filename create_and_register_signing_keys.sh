#! /bin/bash
set -x # Print commands

openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=My VirtualBox signing key/"

sudo mokutil --import MOK.der

echo "Remember to reboot in order to enrol the MOK key"
