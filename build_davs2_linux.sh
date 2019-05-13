# build davs2 on linux ubuntu 18.04 
cd ./build/linux
mkdir avs2_lib
./configure --prefix=$build_dir/avs2_lib --enable-pic --enable-shared
make
