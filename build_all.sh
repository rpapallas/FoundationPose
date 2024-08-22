DIR=$(pwd)

cd $DIR/mycpp/ && rm -rf build && mkdir -p build && cd build && cmake .. -DPYTHON_EXECUTABLE=$(which python3.10) && make -j11
cd /kaolin && rm -rf build *egg* && pip install -e .
cd $DIR/bundlesdf/mycuda && rm -rf build *egg* && pip install -e .

cd ${DIR}
