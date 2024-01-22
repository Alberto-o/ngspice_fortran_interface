# ngSpice FORTRAN interface

Interface and wrapper functions to use ngSpice as an external library.

## src ## 
*ngspice_interface.F90* contains the bindings to the shared functions used. *circuit.F90* defines a type, **circuit_t**, and a series of wrapper functions to hide the direct use of the interfaced functions. 

## test ##

Two example of use cases on how to run the solver and extract information. When the *step* function is used, information can be accesed through the callback function *SendData* at each time step (in transient analysis) or sweep point (in parameter sweep analysis)

## netlist ##

Contains the netslist used in the use test cases


