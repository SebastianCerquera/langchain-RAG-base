#!/bin/bash

if [ "x$1" == "xbash" ]; then
    exec bash
else
    jupyter notebook --no-browser --port=5001 --allow-root --ip='*'
fi
