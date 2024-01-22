module testingTools_mod
    implicit none
    contains

    function checkNear(target, number, rel_tol) result(is_near)
        real, intent(in) :: target, number
        real :: rel_tol
        logical :: is_near
        real :: abs_diff

        abs_diff = abs(target-number)
        if (abs_diff == 0.0) then
            is_near = .true.
        else 
            is_near = abs(target-number)/target < rel_tol
        endif

    end function 


end module
 