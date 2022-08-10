#!/bin/bash

resultado=$( grep -v '\S' $1 | grep -v '\s' | wc -l)

echo "El texto de $(basename $1) tiene $resultado líneas en blanco."
