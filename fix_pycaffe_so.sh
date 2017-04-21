cd ~/caffe/python/caffe
install_name_tool -change "libhdf5.10.dylib" "$HOME/anaconda/lib/libhdf5.10.dylib" _caffe.so
install_name_tool -change "libhdf5_hl.10.dylib" "$HOME/anaconda/lib/libhdf5_hl.10.dylib" _caffe.so
install_name_tool -change "$HOME/leveldb-1.19/libleveldb.dylib.1" "/usr/local/lib/libleveldb.1.dylib" _caffe.so
