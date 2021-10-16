#!/bin/bash

wsl --shutdown
echo "Opening notepad, enter the lines as given in the document"
notepad "$env:USERPROFILE/.wslconfig"

echo "Pulling the ubuntu machine from Docker Hub"
docker pull csminpp/ubuntu-sysbench

docker run -it csminpp/ubuntu-sysbench bash