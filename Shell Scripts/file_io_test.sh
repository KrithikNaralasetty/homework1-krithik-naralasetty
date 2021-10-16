#!/bin/bash

echo "Beginning the file I/O test"

sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw clear
sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw run
sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw cleanup
echo "Test 1 done"
sleep(1000)

sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw clear
sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw run
sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw cleanup
echo "Test 2 done"
sleep(1000)

sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw clear
sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw run
sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw cleanup
echo "Test 3 done"
sleep(1000)

sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw clear
sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw run
sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw cleanup
echo "Test 4 done"
sleep(1000)

sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw clear
sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw run
sysbench --num-threads=16 --test=fileio --file-total-size=9G --file-num=128 --file-test-mode=rndrw cleanup
echo "Test 5 done"