subroutine calc
    implicit none
    
    ! Define constants
  real, parameter :: G = 6.6743e-11  ! Gravitational constant (m^3 kg^-1 s^-2)
  real, parameter :: M_earth = 5.9722e24 ! Earth's mass (kg)
  real, parameter :: R_earth = 6371e3 ! Earth's radius (m)
  real, parameter :: pi = 3.14159 ! Pi
  real, parameter :: T_earth = 86164.0 ! Earth's rotational period (seconds)

  ! Input variables (no user input needed here)
  integer, parameter :: max_height = 40000 ! Maximum height above Earth's surface (km)
  integer, parameter :: increment = 2000 ! Increment (km)

  ! Loop variables
  integer :: i
  real :: r, velocity_abs, velocity_rotational, velocity_app, period_seconds, period_hours, potential_energy, total_energy

    do i = 0, max_height, increment
    ! Local variables (declared within the loop for clarity)
    ! real :: r, velocity_abs, velocity_rotational, velocity_app, period_seconds, period_hours, potential_energy, total_energy

    ! Calculate total distance from Earth's surface (not center)
    r = R_earth + real(i) * 1000.0 ! Convert km to meters

    ! Calculate absolute velocity (circular orbit)
    velocity_abs = sqrt(G * M_earth / r)  ! (This assumes a circular orbit)**

    ! Calculate Earth's rotational velocity at the equator
    velocity_rotational = 2.0 * pi * R_earth / T_earth

    ! Calculate apparent velocity (considering Earth's rotation)
    velocity_app = velocity_abs + velocity_rotational

    ! Calculate apparent period (orbital period) in seconds
    period_seconds = 2.0 * pi * r / velocity_abs

    ! Convert period to hours
    period_hours = period_seconds / 3600.0  ! Conversion factor (seconds per hour)

    ! Calculate potential energy (assuming zero potential at infinity)
    potential_energy = -G * M_earth / r

    ! Calculate total energy (kinetic + potential) in Joules
    total_energy = 0.5 * (velocity_abs * velocity_abs) + potential_energy

    ! Convert total energy to Mega Joules (MJ)
    total_energy = total_energy / 1.0e6  ! Conversion factor (Joules per MJ)

    ! Print results for current height above Earth's surface
    write(*,*) "Height (km):", real(i)
    write(*,*) "Absolute velocity (m/s):", velocity_abs
    write(*,*) "Apparent velocity (m/s):", velocity_app
    write(*,*) "Apparent period (hours):", period_hours
    write(*,*) "Total energy (MJ):", total_energy
    write(*,*) 
    end do
    
    end
    