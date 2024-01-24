program test_spice_ac

    use circuit_mod
    use testingTools_mod
    implicit none

    type(circuit_t) :: circuit
    character(len=50) :: netlist, nodeName
    real :: finalTime
    integer :: i

    circuit%time = 0.0
    circuit%dt = 50e-6
    finalTime = 200e-6

    error_cnt = 0
    netlist = '../netlists/netlist_ac.cir'
    nodeName = "int"
    call circuit%init(netlist)
    call circuit%setStopTimes(finalTime, circuit%dt)
    do while (circuit%time < finalTime)
        call circuit%step()
        circuit%time = circuit%time + circuit%dt
        if (checkNear(circuit%getTime(), circuit%time, 0.01) .eqv. .false. ) then 
            error_cnt = error_cnt + 1
        end if
    end do

    write(*,*) error_cnt

end program