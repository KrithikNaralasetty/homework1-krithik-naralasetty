#!/bin/bash

echo "This is going to be the CPU testing"
sysbench --test=cpu --cpu-max-prime=30000 run
sleep(1000)
sysbench --test=cpu --cpu-max-prime=30000 run
sleep(1000)
sysbench --test=cpu --cpu-max-prime=30000 run
sleep(1000)
sysbench --test=cpu --cpu-max-prime=30000 run
sleep(1000)
sysbench --test=cpu --cpu-max-prime=30000 run