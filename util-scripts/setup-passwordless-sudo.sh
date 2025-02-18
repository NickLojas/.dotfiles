#!/bin/bash

if ! sudo grep "$USER.*NOPASSWD" /etc/sudoers; then
	echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers >/dev/null
else
	echo "$USER already has passwordless sudo set up"
fi
