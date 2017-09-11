#!/usr/bin/env bash

ls -a ~
export PATH=~/.local/bin:$PATH
source ~/.bash_profile
cd docs
aws s3 cp index.html s3://footplusplus.com/
aws s3 sync --delete . s3://footplusplus.com/
