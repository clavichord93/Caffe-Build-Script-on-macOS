make clean;
make all;
make test;
./fix_so.sh;
make runtest;
make pycaffe;
./fix_pycaffe_so.sh;
make distribute
