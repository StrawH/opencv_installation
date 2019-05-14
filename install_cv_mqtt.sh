#!/usr/bin/env bash
sudo apt-get -y purge wolfram-engine
sudo apt-get -y purge libreoffice*
sudo apt-get -y clean
sudo apt-get -y autoremove
sudo apt -y update
sudo apt -y upgrade
sudo apt-get install --assume-yes build-essential cmake git unzip pkg-config
sudo apt-get install --assume-yes libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install --assume-yes libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install --assume-yes libxvidcore-dev libx264-dev
sudo apt-get install --assume-yes libgtk-3-dev
sudo apt-get install --assume-yes libcanberra-gtk*
sudo apt-get install --assume-yes libatlas-base-dev gfortran
sudo apt-get install --assume-yes python3-dev python-dev
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo python get-pip.py
sudo rm get-pip.py
sudo pip3 install numpy
sudo pip install numpy
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.0.1.zip
unzip opencv.zip
mv opencv-4.0.1 opencv
cd /home/pi/opencv
mkdir build
cd build 
cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D ENABLE_NEON=ON \
    -D ENABLE_VFPV3=ON \
    -D BUILD_TESTS=OFF \
    -D OPENCV_ENABLE_NONFREE=ON \
    -D INSTALL_PYTHON_EXAMPLES=OFF \
    -D BUILD_EXAMPLES=OFF ..
make -j2
sudo make install
cd /home/pi
rm opencv.zip
sudo pip3 install paho_mqtt
sudo apt-get install mosquitto -y
