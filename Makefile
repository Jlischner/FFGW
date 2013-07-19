all:
	ftn -o ffgw.x diel.f90 do_fft.f90 -ldfftw