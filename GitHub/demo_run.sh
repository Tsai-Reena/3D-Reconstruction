#!/bin/bash

bash scripts/r3live_system_launcher.sh
sleep 50
bash scripts/mesh_reconstruction.sh
bash scripts/paint3d.sh
