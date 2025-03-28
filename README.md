# Kyber Post-quantum algorithm
This document aims to explain what was done to implement the Kyber Post-quantum Algorithm in an FPGA Zynq-7000.

The FPGA Zynq-7000 is a SOC FPGA (ARM A9 dual-core + FPGA).

## Kyber explained

Read Standard Lattice-Based Key Encapsulation on Embedded Devices article.

## What was done
In order to implement the Kyber algorithm and propose enhancements on it, the first step was to use the available online implementation, proposed by its creators, and migrate the code to the ARM A9. This will be the base for further comparisons.

Analyzing the code implemented by Kyber's creators using Visual Studio, it was possible to verify the slower parts of the code.

Therefore, in order to reduce this bottleneck, they were implemented in hardware (FPGA).

## Results
To perform the timing test, the code firstly executes a KEM test, which is composed of a keypair generate, encryption, and decryption, using only software. The next step is to perform the KEM using FPGA acceleration.

The results are listed bellow:

| Architecture          	| Key pair (ms) 	| Encryption (ms) 	| Decryption (ms) 	| Total (ms) 	| Improvement (%) 	|
|-----------------------	|---------------	|-----------------	|-----------------	|------------	|-----------------	|
| Software              	| 3.29          	| 4.46          	| 5.06         	    | 12.81   	    | -               	|
| Software + Hardware     	| 0.87           	| 1.39          	| 1.79           	| 4.05         	| 68.38           	|

An interesting observation to be pointed out is that the Kyber Post-quantum Algorithm is slower in the ARM processor than in an Intel processor. This can be easily explained by two main factors: the first one is that the Intel processor runs in a higher frequency than the ARM processor. The latter runs at 666MHz and the former at 3GHz, approximately. Although, the biggest impact is due to each one architecture. The ARM processor uses a RISC architecture, which has a reduced instruction complexity. On the other hand, the Intel processor uses a CISC architecture, which has a high instruction complexity. Therefore, the Intel processor needs less instructions to execute the same task when compared with an ARM processor. So, it is easy to figure out that and processor which runs faster and need less instructions to complete a task (Intel) will take much less time than the other that runs slower and need more instructions to perform the same task (ARM). In order to compare, the Intel processor takes 250 millions of cycles or 120 ms, approximately, to perform the KEM test; and the ARM takes 1.2 billion of cycles or 1800 ms to perform the same KEM test.

## IP-code
All IP codes implemented in hardware (VHDL) are commited in a separated repository.

## Repo organization
All projects can be found inside /kyber-fpga.sdk folder.
- /kyber-fpga.sdk/kyber_fpga: provides a simples code to test Kyber using software and hardware/software co-design implementation.
- /kyber-fpga.sdk/kyber_client: provides the client side that reads SWM3000 data and implements a TCP client to send encrypted data using AES-256-GCM with keys previously exchanged using kyber.
- /kyber-fpga.sdk/kyber_server: provides the server side that receives the SWM3000 encrypted data through a TCP server. It uses AES-256-GCM with keys previously exchanged using Kyber to decipher the received data.