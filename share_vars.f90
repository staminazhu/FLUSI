module share_vars
  implicit none

  integer, parameter :: pr = 8
  integer, save :: nx, ny, nz, nt
  integer, save :: mpisize, mpirank, mpicommcart, mpiinteger, mpireal, mpicomplex
  integer, save :: iDealias, inicond, imask, itdrag
  integer, save :: iDrag, iKinDiss
  integer, save :: iSaveVelocity, iSaveVorticity, iSavePress, iSaveMask, iSaveSolidVelocity
  integer, save :: iTimeMethodFluid, iMoving, iPenalization, iMeanFlow, iDoBackup
  integer, dimension (2), save :: mpidims, mpicoords, mpicommslab
  integer, dimension (1:3), save :: ra, rb, rs, ca, cb, cs
  integer, dimension (:,:), allocatable, save :: ra_table, rb_table
  real (kind=pr), save :: tmax, cfl, nu, eps, pi, scalex, scaley, scalez, length
  real (kind=pr), save :: xl, yl, zl, dx, dy ,dz
  real (kind=pr), save :: Ux, Uy, Uz, Ax, Ay, Az, tstart, tsave
  real (kind=pr), save :: x0, y0, z0, dt_fixed
  real (kind=pr), dimension (:,:,:), allocatable, save :: mask
  real (kind=pr), dimension (:,:,:,:), allocatable, save :: us

  integer, parameter :: nlines=256 ! maximum number of lines in PARAMS-file
  
  real (kind=pr), save :: time_fft, time_ifft, time_vis, time_mask, time_fft2, time_ifft2
  real (kind=pr), save :: time_vor, time_curl, time_p, time_nlk, time_u
  real (kind=pr), save :: time_bckp, time_save, time_total, time_fluid, time_nlk_fft
  
  type Integrals
    real(kind=pr) :: time
    real(kind=pr) :: E_Kin
    real(kind=pr) :: Dissip
    real(kind=pr) :: Divergence
    real(kind=pr) :: Volume
    real(kind=pr), dimension(1:3) :: Force
  end type
  
end module share_vars
