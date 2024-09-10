# Ngspice FORTRAN interface

[Ngspice](https://ngspice.sourceforge.io/) is a state-of-the-art mixed signal-mixed level circuit solver. Ngspice is written in C and can be compiled as a shared library to be used from other programs. 
This project is a C-Fortran interface to be able to use ngspice shared functions from a Fortran project. Besides the interface, which defines the bare minimum bindings to interface with ngspice functions, there are a series of auxiliry functions to do some of the operations needed when defining a ngspice circuit and operating within: iniatiating the circuit, reading a netlist, invoking commands, reading voltage from nodes, setting time steps in a transient analysis, etc

The content of the repository is as follows:

## src ## 

*ngspice_interface.F90* , *ngspice_interface.c* and *ngspice_interface.h* define the bindings to the shared functions.
*circuit.F90* defines a type, **circuit_t**, to hold information of the circuit, and a series of wrapper auxiliary functions to operate on the circuit hiding the direct use of the interfaced *c* functions. 

## test ##

Two example of use cases on how to run the solver and extract information. When the *step* function is used, information can be accesed through the callback function *SendData* at each time step (in transient analysis) or sweep point (in parameter sweep analysis)

## netlist ##

Contains the netslist used in the use test cases


