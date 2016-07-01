#!/bin/bash

export OMP_PROC_BIND=true
icc stream.c -O3 -o stream -fopenmp -DSTREAM_ARRAY_SIZE=64000000

OMP_NUM_THREADS=1   numactl --membind $1 ./stream | grep Triad | awk  '{print 1 "   " $2}'
OMP_NUM_THREADS=2   numactl --membind $1 ./stream | grep Triad | awk  '{print 2 "   " $2}'
OMP_NUM_THREADS=4   numactl --membind $1 ./stream | grep Triad | awk  '{print 4 "   " $2}'
OMP_NUM_THREADS=8   numactl --membind $1 ./stream | grep Triad | awk  '{print 8 "   " $2}'
OMP_NUM_THREADS=16  numactl --membind $1 ./stream | grep Triad | awk  '{print 16 "   " $2}'
OMP_NUM_THREADS=32  numactl --membind $1 ./stream | grep Triad | awk  '{print 32 "   " $2}'
OMP_NUM_THREADS=64  numactl --membind $1 ./stream | grep Triad | awk  '{print 64 "   " $2}'
OMP_NUM_THREADS=128 numactl --membind $1 ./stream | grep Triad | awk  '{print 128 "   " $2}'
OMP_NUM_THREADS=256 numactl --membind $1 ./stream | grep Triad | awk  '{print 256 "   " $2}'



