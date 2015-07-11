# encoding: utf-8
# cython: profile=True
# filename: calc_pi.pyx

cdef inline double recip_square(i):
    return 1./i**2

def approx_pi(int n=10000000):
    cdef double val = 0.
    cdef int k
    for k in range(1,n+1):
        val += recip_square(k)
    return (6 * val)**.5

if __name__ == '__main__':
    approx_pi()
