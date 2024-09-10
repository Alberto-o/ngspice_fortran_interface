# ngSpice FORTRAN interface

Interface and wrapper functions to use ngSpice as an external library.

## src ## 

*ngspice_interface.F90* , *ngspice_interface.c* and *ngspice_interface.h* define the bindings to the shared functions.
*circuit.F90* defines a type, **circuit_t**, to hold information of the circuit, and a series of wrapper auxiliary functions to operate on the circuit hiding the direct use of the interfaced *c* functions. 

## test ##

Two example of use cases on how to run the solver and extract information. When the *step* function is used, information can be accesed through the callback function *SendData* at each time step (in transient analysis) or sweep point (in parameter sweep analysis)

## netlist ##

Contains the netslist used in the use test cases


