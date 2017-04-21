cd ~/caffe/.build_release/tools
install_name_tool -change "@rpath/libhdf5.10.dylib" "$HOME/anaconda/lib/libhdf5.10.dylib" caffe
install_name_tool -change "@rpath/libhdf5_hl.10.dylib" "$HOME/anaconda/lib/libhdf5_hl.10.dylib" caffe
install_name_tool -change "$HOME/leveldb-1.19/libleveldb.dylib.1" "/usr/local/lib/libleveldb.1.dylib" caffe
cd ../lib
install_name_tool -change "@rpath/libhdf5.10.dylib" "$HOME/anaconda/lib/libhdf5.10.dylib" libcaffe.so
install_name_tool -change "@rpath/libhdf5_hl.10.dylib" "$HOME/anaconda/lib/libhdf5_hl.10.dylib" libcaffe.so
install_name_tool -change "$HOME/leveldb-1.19/libleveldb.dylib.1" "/usr/local/lib/libleveldb.1.dylib" libcaffe.so 
cd ../test
install_name_tool -change "@rpath/libhdf5.10.dylib" "$HOME/anaconda/lib/libhdf5.10.dylib" test_all.testbin
install_name_tool -change "@rpath/libhdf5_hl.10.dylib" "$HOME/anaconda/lib/libhdf5_hl.10.dylib" test_all.testbin
install_name_tool -change "$HOME/leveldb-1.19/libleveldb.dylib.1" "/usr/local/lib/libleveldb.1.dylib" test_all.testbin
