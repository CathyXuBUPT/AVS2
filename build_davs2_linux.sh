cd ./build/linux
mkdir avs2_lib
./configure --prefix=$build_dir/avs2_lib --enable-pic --enable-shared
make
