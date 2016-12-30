#! /bin/bash

# exit if a command fails
set -e
set -x

triple=x86_64-unknown-linux-gnu

# install rust
curl -sL https://static.rust-lang.org/dist/rust-nightly-$triple.tar.gz | tar xvz -C /tmp
/tmp/rust-nightly-$triple/install.sh

# install cargo
curl -sL https://static.rust-lang.org/cargo-dist/cargo-nightly-$triple.tar.gz | tar xvz -C /tmp
/tmp/cargo-nightly-$triple/install.sh

# prepare dir
mkdir /source
