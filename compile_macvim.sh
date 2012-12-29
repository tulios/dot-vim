#!/bin/bash
git clone git://github.com/b4winckler/macvim.git
cd macvim/src
export LDFLAGS=-L/usr/lib
./configure \
      --with-features=huge \
          --enable-rubyinterp \
              --enable-perlinterp \
                  --enable-cscope \
                      --enable-pythoninterp \
                          --with-python-config-dir=/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/config/
make
open MacVim/build/Release
echo Drag MacVim.app to your Applications directory
