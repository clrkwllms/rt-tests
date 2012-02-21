# RT-Tests

This repository contains some programs that test various rt-linux features.

## Available Tests

- backfire        - send a signal from driver to user and measure time intervals

- cyclictest      - ?

- hackbench       - measues the latency of schedulable entities which 
                    communicate via sockets/pipes

- hwlatdetect     - detect if System Management Interrupts (SMIs) are causing
                    event latencies in the Linux RT kernel

- pi_tests        - a stress test that is intended to exercise kernel and C
                    library code paths for POSIX mutexes using the Priority
                    Inheritance attribute (PTHREAD_PRIO_INHERIT)

- pmqtest         - measures the latency of interprocess communication with
                    POSIX messages queues

- rt-migrate-test - ?

- signaltest      - ?

- sigwaittest     - measures the latency between sending and receiving a signal
                    between threads or processes

- svsematest      - measures the latency of SYSV semaphores


## Compile

    sudo apt-get install build-essential libluma1 libnuma-dev
    make
