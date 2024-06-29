import cython
import numpy as np
cimport numpy as cnp

# pythonから呼び出す関数
def func1(int n):
    cdef:
        int i, sum
        list int_list

    sum = 0
    int_list = []

    for i in range(n):
        sum += i
        int_list.append(i)

    return sum, int_list

# pythonからは参照しない関数。cythonの中だけで使う場合。defより早い
cdef func2(cnp.ndarray cnp_ndarray):
    cdef:
        int i, N, sum
    
    sum = 0
    N = len(cnp_ndarray)
    
    for i in range(N):
        sum += cnp_ndarray[i]

    return sum

# pythonとcython両方から参照する場合で、cythonから参照するときに高速化したい場合
cpdef func3():
    pass