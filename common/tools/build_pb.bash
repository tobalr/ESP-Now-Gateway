#!/bin/bash

## DEPENDENCIES
# protoc
# python-protobuf
PB_NAME="messages"
SRC_DIR="../src/common/model" 
OUT_DIR="../lib/nanopb" 
LIB_DIR="../lib/nanopb" 
protoc --proto_path="$SRC_DIR" -o "$OUT_DIR/$PB_NAME.pb" "$SRC_DIR/$PB_NAME.proto"
../nanopb/generator/nanopb_generator.py "$OUT_DIR/$PB_NAME.pb"
