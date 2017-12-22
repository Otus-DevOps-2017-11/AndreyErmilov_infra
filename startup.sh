#!/bin/bash

git clone git@github.com:Otus-DevOps-2017-11/AndreyErmilov_infra.git
cd AndreyErmilov_infra
sudo scripts/install_ruby.sh
sudo scripts/install_mongodb.sh
sudo scripts/deploy.sh