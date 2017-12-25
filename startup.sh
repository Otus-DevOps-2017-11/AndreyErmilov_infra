#!/bin/bash

git clone -b Infra-2 https://github.com/Otus-DevOps-2017-11/AndreyErmilov_infra.git
cd AndreyErmilov_infra
sudo scripts/install_ruby.sh
sudo scripts/install_mongodb.sh
sudo scripts/deploy.sh