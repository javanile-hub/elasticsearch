#!/bin/bash

## fix linux low virtual memory value
sysctl -w vm.max_map_count=262144
