#!/bin/sh

# compile davs2 on linux ubuntu 18.04 
# 源码位于https://github.com/pkuvcl/davs2.git
# 将此文件放置于该工程目录下，并sudo chmod +x build_davs2_linux.sh
# 而后执行 ./build_davs2_linux.sh
cd ./build/linux
rm -r common
rm -r test
rm config.h
rm config.log
rm config.mak
rm davs2
rm davs2.pc
rm davs2_config.h
rm libdavs2.a
rm libdavs2.so.16
./configure --enable-pic --enable-shared
make 
# 生成的库文件位于/build/linux下
# 静态库为libdavs2.a，动态库为libavs2.so.16
# 测试的可执行文件为davs2
# 可通过执行 ./davs2 -i test.avs -t 1 -o dec.yuv 进行解码
