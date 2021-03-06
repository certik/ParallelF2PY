cc=======+=========+=========+=========+=========+=========+=========+==
cc PROGRAM : event_chain.f
cc TYPE    : Fortran 77 program 
cc PURPOSE : test program for f2py - multiprocessing
cc COMMENT : 
cc VERSION : 30 MAR 2012
cc=======+=========+=========+=========+=========+=========+=========+==
      subroutine sine_add_1(data)
      real*8 data
Cf2py intent (in,out) data
      do k = 2, 1000000
         data = data + sin(1./k)
      end do
      end

      subroutine sine_add_2(index,data,N)
      real*8 data(N)
      integer index
Cf2py intent (inout) data
      do k = 2, 1000000
         data(index+1) = data(index+1) + sin(1./k)
      end do
      end
