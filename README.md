
# Benchmark Scripts and Data for STREAM with Different Thread Counts on KNL

This repository contains the benchmark code supplementing my [blog post on STREAM benchmark results for Knights Landing, Knights Corner, Haswell, Ivy Bridge, and Sandy Bridge](https://www.karlrupp.net/2016/07/knights-landing-vs-knights-corner-haswell-ivy-bridge-and-sandy-bridge-stream-benchmark-results/).

## Build

On *nix-like systems it is usually enough to run `run.sh` with the respective NUMA domain number.
Make sure that your KNL is running in cluster mode in order to be able to switch between MCDRAM and DDR4.

To collect data for DDR4 RAM on Knights Landing, run

    $> ./run.sh 0

To collect data for MCDRAM on Knights Landing, run

    $> ./run.sh 1

Windows 10 users can use the Linux Bash Shell.

## License

The STREAM benchmark code in stream.c is subject to the license stated therein.
All other scripts and data is available under a Creative Commons License (CC BY 4.0).
See file LICENSE.txt for details.

