#!/bin/bash

git clone -b Infra-2 https://github.com/Otus-DevOps-2017-11/AndreyErmilov_infra.git
cd AndreyErmilov_infra
sudo install_ruby.sh
sudo install_mongodb.sh
sudo deploy.sh