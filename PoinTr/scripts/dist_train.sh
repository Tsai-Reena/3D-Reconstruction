#!/usr/bin/env bash

set -x
NGPUS=$1
PORT=$2
PY_ARGS=${@:3}

torchrun --nproc_per_node=${NGPUS} --master_port=${PORT} \
    main.py --launcher pytorch --sync_bn ${PY_ARGS}
