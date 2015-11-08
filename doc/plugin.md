# 记录vim 相关插件的bug fix

## youcompleteme 

clang 编译器不支持openmp 所以在打开涉及omp 相关函数时会一直有错误提醒。

解决方案如下：

1. 找到`omp.h` 文件绝对路径
    
        sudo find / -type f -name "opm.h"

2. 将文件路径加入到`ycm_extra_conf.py`文件的flag 中

        # add additional include (for clang to find omp.h, even if it doesn't support it)
        '-I',
        '/usr/lib/gcc/x86_64-linux-gnu/4.8/include',

对于`mpi`可以使用同样的方法，来加入`mpi`相关库文件按路径。


