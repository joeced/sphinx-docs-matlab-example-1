#!/usr/bin/env bash

pip install -r requirements.txt
pushd docs
make html
popd